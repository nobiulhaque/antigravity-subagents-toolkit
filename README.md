# Antigravity Subagents Toolkit 🚀

A modular, tool-assisted multi-agent specialist framework for Google Antigravity (inspired by advanced subagent architectures like Claude Code).
Designed to eliminate LLM hallucinations and reduce token consumption by delegating tasks to deterministic local CLI engines.

---

## 👥 The Complete Specialist Roster (11 Subagents)

### 🎨 Frontend Specialists
| Specialist | Role & Specialty | Deterministic Engine (0 Tokens) |
| :--- | :--- | :--- |
| **`frontend-ui-specialist`**| Modern UI/UX design, glassmorphism, responsive viewports, micro-animations, component modularity. | **`browser_subagent`** (visual check)<br>**`pa11y`** (accessibility) |
| **`bundle-performance-auditor`**| Bundle size auditing, Vite asset footprints, code-splitting (`React.lazy`). | **`vite build asset table`**, **`cost-of-modules`** |

### ⚙️ Backend Specialists
| Specialist | Role & Specialty | Deterministic Engine (0 Tokens) |
| :--- | :--- | :--- |
| **`backend-systems-engineer`**| NestJS module encapsulation, ACID database transactions, concurrency, idempotency, rate limiting. | **`nest build`**, **`docker compose`**, **`curl`** |
| **`db-security-auditor`** | Prisma query optimizer (N+1 leaks, indexing) and RBAC/security validation. | **`prisma validate`**, **`npm audit`**, **`graphify query`** |
| **`api-contract-tester`** | Testing REST endpoints, Swagger/OpenAPI synchronization, DTO validation. | **`curl`**, **`@nestjs/swagger`**, **`supertest`** |

### 🧠 System, Quality & Testing Specialists
| Specialist | Role & Specialty | Deterministic Engine (0 Tokens) |
| :--- | :--- | :--- |
| **`cartographer`** | Codebase mapping, AST call trees, and God Node detection. | **`graphify`** |
| **`solutions-architect`**| High-scalability feature design, decoupled architecture, API contracts. | **`graphify god-nodes`**, **`madge`** |
| **`quality-auditor`** | React hooks (`exhaustive-deps`), memory leaks, routing guards, NestJS DI. | **`eslint-plugin-react-hooks`**, **`madge`**, **`tsc`** |
| **`surgical-fixer`** | Zero-guess compiler diagnostics, targeted error fixing, minimal-token diffs. | **`tsc --noEmit`**, **`npm run build`**, **`jest`** |
| **`test-engineer`** | Autonomous unit & integration test generation, mock verification, coverage. | **`jest`**, **`vitest`**, **`supertest`** |
| **`dead-code-pruner`** | Eliminating zombie code, unused exports, orphan files, and phantom packages. | **`knip`**, **`depcheck`** |

---

## 📦 How to Use in Any Project

### Method 1: Global Installation (Available in ALL Projects Automatically)
These skills are already installed in your global Antigravity config (`~/.gemini/config/skills/`). 
They automatically work in **any project you open with Antigravity** on this machine without needing to copy anything!

### Method 2: Project-Specific Installation (1 Click)
If you want to bundle these rules and skills directly into a specific project repository so your whole team can use them:

Open PowerShell in this directory and run:
```powershell
.\install.ps1 -Target "C:\path\to\your\other-project"
```

Or on Linux/macOS:
```bash
./install.sh /path/to/your/other-project
```

This will copy the `.agents/` folder into your other project, configuring:
* `.agents/skills/` (all 11 specialist skills)
* `.agents/rules/` (orchestration, graphify-first, and bug-fixing rules)
* `.agents/SUBAGENTS.md` (the central roster and registry)

---

## ➕ How to Add a New Subagent in 2 Minutes

To add any new specialist (e.g. `git-workflow-agent`, `seo-auditor`):

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

3. Run `.\install.ps1 -Global` to update your machine-wide global subagents!

---

## 🔄 1-Click Community Updates

As the community contributes new subagents and sharper CLI toolchains, you can pull the latest updates and sync your machine with a single command:

**On Windows PowerShell:**
```powershell
.\update.ps1
```

**On Linux / macOS:**
```bash
./update.sh
```

This automatically:
1. Pulls the latest community-contributed subagents and rules via Git.
2. Re-registers all specialists globally to `~/.gemini/config/skills/`.

---

## 🤝 Community & Contributions

We want this project to evolve and improve through community contributions!
- Want to contribute a new subagent or improve an existing toolchain? Check out [CONTRIBUTING.md](CONTRIBUTING.md).
- Want to report an issue or suggest a specialist? Open an issue using our [Subagent Proposal Template](.github/ISSUE_TEMPLATE/subagent-proposal.md).
- Licensed under the [MIT License](LICENSE).

