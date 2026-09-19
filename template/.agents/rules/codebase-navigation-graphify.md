# Codebase Navigation & Architecture Discovery (Graphify-First Rule)

## 1. Zero Full-Project Scanning
- **NEVER** recursively crawl directories or run broad workspace-wide file searches to explore architecture, discover components, or trace dependencies.
- Doing so wastes massive amounts of context tokens and time.

## 2. Graphify Index Locations
Both subprojects have active, pre-built Graphify knowledge graphs:
- **Frontend (Web/Packages):** `c:\My Space\PCompany\Ecom\graphify-out\graph.json`
- **Backend (NestJS API):** `c:\My Space\PCompany\EcomBackend\graphify-out\graph.json`

## 3. Handling "Scan Both Frontend and Backend", "Deep Scan", or "Analyze"
Whenever the user asks to **"scan"**, **"deep scan"**, or **"analyze"** the frontend, backend, or both:
1. **Never read raw files A to Z into context.**
2. **Refresh the graphs first (if needed):**
   ```powershell
   & "C:\Program Files\Python314\python.exe" -m graphify update
   ```
   (Run in `c:\My Space\PCompany\Ecom` and/or `c:\My Space\PCompany\EcomBackend`). This runs local AST extraction with **0 LLM token cost**.
3. **Analyze from the Graph:**
   - Read the architectural audit from `graphify-out/GRAPH_REPORT.md` and `graphify-out/.graphify_analysis.json`.
   - Report:
     - **God Nodes:** Central bottlenecks and high-degree dependencies.
     - **Communities & Clusters:** Functional groupings and boundaries.
     - **Surprising Connections / Cross-domain coupling:** Areas where layers might be improperly coupled.
     - **Cohesion Scores:** Modules with low cohesion that need refactoring.

## 4. Querying Graphify for Navigation & Tracing
Before opening or searching files, query the graph directly:
- **Backend:**
  ```powershell
  & "C:\Program Files\Python314\python.exe" -m graphify query "<SymbolOrQuery>"
  # Working directory: c:\My Space\PCompany\EcomBackend
  ```
- **Frontend:**
  ```powershell
  & "C:\Program Files\Python314\python.exe" -m graphify query "<SymbolOrQuery>"
  # Working directory: c:\My Space\PCompany\Ecom
  ```
- **Shortest Path Analysis:**
  ```powershell
  & "C:\Program Files\Python314\python.exe" -m graphify path "<SourceNode>" "<TargetNode>"
  ```
- This gives exact file paths, line numbers, caller/callee relationships, and community clusters in seconds with zero token waste.

## 5. Surgical File Inspection
- Once Graphify identifies the exact target file and line (`loc=Lxx`), use `view_file` with `StartLine` and `EndLine` to read only the relevant function or block.
- Never view whole 500+ line files when investigating a single method or relationship.
