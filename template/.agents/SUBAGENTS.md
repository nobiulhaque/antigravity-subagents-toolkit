# Antigravity Multi-Agent Specialist Registry & Blueprint

This directory configures an enterprise-grade, multi-agent specialist architecture for the `PCompany` workspace (and all Antigravity projects globally).

---

## 👥 The Complete Specialist Roster (14 Subagents)

### 🏗️ Architecture & Navigation Squad
| Subagent | Role & Specialty | Deterministic CLI Engine | When Activated |
| :--- | :--- | :--- | :--- |
| **`cartographer`** | Codebase mapping, AST call trees, and God Node detection. | **`graphify`** | Any search, architecture trace, or dependency lookup |
| **`solutions-architect`** | Scalable feature design, decoupled architecture, and API contracts. | **`graphify god-nodes`**, **`madge`** | *"Plan this feature"*, *"Design new module"*, *"How to build X"* |

### 🎨 Web & Mobile Frontend Squad
| Subagent | Role & Specialty | Deterministic CLI Engine | When Activated |
| :--- | :--- | :--- | :--- |
| **`frontend-ui-specialist`**| Web UI/UX design, glassmorphism, responsive viewports, component modularity. | **`browser_subagent`**, **`pa11y`** | *"Design this UI"*, *"Make this page look modern"*, *"Fix mobile view"* |
| **`mobile-ui-specialist`** | Flutter, React Native, iOS, Android navigation, touch targets, offline resilience. | **`flutter analyze`**, **`maestro`** | *"Build mobile screen"*, *"Fix Flutter/RN layout"*, *"Mobile navigation"* |
| **`bundle-performance-auditor`**| Bundle size auditing, Vite asset footprints, code-splitting (`React.lazy`). | **`vite build asset table`**, **`cost-of-mod`** | *"Audit bundle size"*, *"Check lazy loading"*, *"Optimize page load"* |

### ⚙️ Backend & Database Squad
| Subagent | Role & Specialty | Deterministic CLI Engine | When Activated |
| :--- | :--- | :--- | :--- |
| **`backend-systems-engineer`**| NestJS module encapsulation, ACID transactions, concurrency, idempotency, rate limiting. | **`nest build`**, **`docker compose`** | *"Implement backend service"*, *"Handle checkout transactions"* |
| **`db-security-auditor`** | Prisma query optimizer (N+1 leaks, indexing) and database security validation. | **`prisma validate`**, **`graphify`** | *"Audit database queries"*, *"Optimize Prisma"*, *"Fix N+1 query"* |
| **`api-contract-tester`** | Testing REST endpoints, Swagger/OpenAPI synchronization, DTO validation. | **`curl`**, **`@nestjs/swagger`** | *"Test this API endpoint"*, *"Verify Swagger"*, *"Check API contract"* |

### 🛡️ Security & Quality Squad
| Subagent | Role & Specialty | Deterministic CLI Engine | When Activated |
| :--- | :--- | :--- | :--- |
| **`security-auditor`** | Application security, JWT expiration, secrets detection, injection (SQL/XSS/CSRF). | **`semgrep`**, **`gitleaks`**, **`npm audit`** | *"Run security audit"*, *"Check secrets"*, *"Audit auth tokens"* |
| **`quality-auditor`** | React hooks (`exhaustive-deps`), memory leaks, routing guards, NestJS DI. | **`eslint-plugin-react-hooks`**, **`tsc`** | *"Check code quality"*, *"Review hook lifecycles"*, *"Audit routing"* |
| **`dead-code-pruner`** | Eliminating zombie code, unused exports, orphan files, and phantom packages. | **`knip`**, **`depcheck`** | *"Clean dead code"*, *"Find unused files"*, *"Prune dependencies"* |

### 🧪 Testing & Debugging Squad
| Subagent | Role & Specialty | Deterministic CLI Engine | When Activated |
| :--- | :--- | :--- | :--- |
| **`debugger`** | Systematic root-cause bug investigation, error stack reproduction, regression analysis. | **`tsc`**, **`npm test`**, **`graphify`** | *"Investigate bug"*, *"Why is this crashing"*, *"Find root cause"* |
| **`surgical-fixer`** | Zero-guess compiler diagnostics, targeted error fixing, minimal-token patches. | **`tsc --noEmit`**, **`jest`** | *"Apply fix"*, *"Resolve TS error"*, *"Patch bug"* |
| **`test-engineer`** | Autonomous unit & integration test generation, mock verification, coverage. | **`jest`**, **`vitest`**, **`supertest`** | *"Write tests for X"*, *"Verify regressions"*, *"Run unit tests"* |

---

## 📜 Standard Compact Report Contract

Every specialist returns findings in this strict format to eliminate context bloat:

```text
Finding:
[Concise summary of the issue or state]

Severity:
[CRITICAL | HIGH | MEDIUM | LOW | INFO]

Evidence:
[Exact file:line or error code]

Recommendation:
[Surgical, actionable improvement]

Verification:
[Exact deterministic CLI command, e.g. tsc + npm test]
```

Full constitution and guidelines: [`SPECIFICATION.md`](file:///c:/My%20Space/PCompany/antigravity-subagents-toolkit/SPECIFICATION.md).
