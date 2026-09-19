# Specialized Subagent Team Registry & Blueprint

This directory configures a modular, multi-agent specialist architecture for the `PCompany` workspace (and all Antigravity projects globally).

---

## 👥 The Complete Specialist Roster (11 Subagents)

### 🎨 Frontend Specialists
| Subagent | Role & Specialty | Deterministic Tool (0 Tokens) | When Activated |
| :--- | :--- | :--- | :--- |
| **`frontend-ui-specialist`**| Modern UI/UX design, glassmorphism, responsive viewports, micro-animations, component modularity. | **`browser_subagent`** (visual check)<br>**`pa11y`** (accessibility) | *"Design this UI"*, *"Make this page look modern/premium"*, *"Fix mobile responsiveness"*. |
| **`bundle-performance-auditor`**| Bundle size auditing, Vite asset footprints, code-splitting (`React.lazy`). | **`vite build asset table`**<br>**`cost-of-modules`** | *"Optimize performance"*, *"Audit bundle size"*, *"Check lazy loading"*. |

### ⚙️ Backend Specialists
| Subagent | Role & Specialty | Deterministic Tool (0 Tokens) | When Activated |
| :--- | :--- | :--- | :--- |
| **`backend-systems-engineer`**| NestJS module encapsulation, ACID database transactions, concurrency, idempotency, rate limiting. | **`nest build`**<br>**`docker compose`** | *"Implement backend service"*, *"Handle checkout transactions"*, *"Prevent race conditions"*. |
| **`db-security-auditor`** | Prisma query optimizer (N+1 leaks, indexing) and RBAC/security validation. | **`prisma validate`**, **`npm audit`**, **`graphify query`** | *"Audit database queries"*, *"Check security/roles"*, *"Optimize Prisma"*. |
| **`api-contract-tester`** | Testing REST endpoints, Swagger/OpenAPI synchronization, DTO validation. | **`curl`**, **`@nestjs/swagger`**, **`supertest`** | *"Test this API endpoint"*, *"Verify Swagger"*, *"Check API contract"*. |

### 🧠 System, Quality & Testing Specialists
| Subagent | Role & Specialty | Deterministic Tool (0 Tokens) | When Activated |
| :--- | :--- | :--- | :--- |
| **`cartographer`** | Codebase mapping, AST call trees, and God Node detection. | **`graphify`** | Any search, architecture trace, or dependency lookup. |
| **`solutions-architect`** | High-scalability feature design, decoupled architecture, and API contracts. | **`graphify god-nodes`**, **`madge`** | *"Plan this feature"*, *"Design new module"*, *"How to build X"*. |
| **`quality-auditor`** | React hooks (`exhaustive-deps`), memory leaks, routing guards, NestJS DI. | **`eslint-plugin-react-hooks`**, **`madge`**, **`tsc`** | *"Check code quality"*, *"Review lifecycle"*, *"Audit routing"*. |
| **`surgical-fixer`** | Zero-guess compiler diagnostics, targeted error fixing, minimal-token diffs. | **`tsc --noEmit`**, **`npm run build`**, **`jest`** | *"Fix this bug/error"*, *"Build failed"*, *"TypeScript type error"*. |
| **`test-engineer`** | Autonomous unit & integration test generation, mock verification, coverage. | **`jest`**, **`vitest`**, **`supertest`** | *"Write tests for X"*, *"Verify regressions"*, *"Run unit tests"*. |
| **`dead-code-pruner`** | Eliminating zombie code, unused exports, orphan files, and phantom packages. | **`knip`**, **`depcheck`** | *"Clean dead code"*, *"Find unused files"*, *"Prune dependencies"*. |

---

## ⚙️ How the Orchestration Works

1. **Clean Main Context:** The main orchestrator agent coordinates the team. It delegates heavy exploration to deterministic tools so the chat context never gets clogged with raw file dumps.
2. **Context-Sharing via Graphify:** All subagents share the pre-built Graphify knowledge graphs in:
   - `Ecom/graphify-out/` (Frontend)
   - `EcomBackend/graphify-out/` (Backend)
3. **Deterministic Verification:** Every recommendation or patch is validated against a real CLI tool (`tsc`, `jest`, `nest build`, `prisma validate`, `browser_subagent`) before reporting back.

---

## ➕ How to Add a New Subagent in 2 Minutes

To add any new specialist:

1. Create a folder in `.agents/skills/<your-subagent-name>/`
2. Create `SKILL.md` inside it using this template:

```markdown
---
name: your-subagent-name
description: "Description of what this agent does and when to invoke it."
---

# Subagent Name (Tool-Assisted)

## Purpose
What specific task does this subagent perform?

## Automated Toolchain
- Which deterministic CLI tool does it run? (e.g. `npm test`, `browser_subagent`, `npx audit`)

## Standard Operating Procedure (SOP)
1. Run the local CLI tool to get deterministic findings.
2. Read only the specific lines flagged by the tool.
3. Return a concise, 3-point action plan.
```
