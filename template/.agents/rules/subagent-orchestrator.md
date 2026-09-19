# Subagent Team Orchestration Policy

## 1. Specialist Delegation
When handling user tasks, delegate domain-specific concerns according to the [Subagent Registry](file:///c:/My%20Space/PCompany/.agents/SUBAGENTS.md):

- **Codebase Mapping & Search:** Delegate to **`cartographer` (Graphify)** (`Ecom/graphify-out`, `EcomBackend/graphify-out`). Never scan files A-Z.
- **Feature Design & Scalability:** Activate **`solutions-architect`**. Inspect existing module couplings in Graphify before designing DTOs or endpoints.
- **Code Quality, Lifecycles & Routing:** Activate **`quality-auditor`**. Audit React dependency arrays, cleanup functions, route guards, and NestJS patterns.
- **Bug Fixing & Compiler Errors:** Activate **`surgical-fixer`**. Run `tsc` or `npm run build` diagnostics first, pinpoint the exact line, and apply minimal-line patches.
- **Database Performance & Security:** Activate **`db-security-auditor`**. Check for N+1 queries, indexing, and `@UseGuards` / `@Roles`.

## 2. Minimal Token Output Rule
Specialists must never dump raw source code into context. Return only concise audit points, exact line slices, or minimal patch diffs.
