<div align="center">

# 🚀 Antigravity Subagents Toolkit

**A modular, deterministic, tool-assisted multi-agent specialist framework for Google Antigravity.**  
*Eliminate LLM hallucinations. Cut token waste by up to 98%. Delegate heavy lifting to local CLI engines.*

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)
[![Platform](https://img.shields.io/badge/Platform-Google%20Antigravity%20%7C%20AGY%202.0-orange)](https://antigravity.google)
[![Architecture](https://img.shields.io/badge/Architecture-Tool--Assisted%20Subagents-purple)](#-architecture--orchestration)

[Quick Start](#-quick-start) • [The 11 Specialists](#-the-specialist-roster-11-subagents) • [How It Works](#-the-token-economy-problem-vs-solution) • [Contributing](CONTRIBUTING.md)

</div>

---

## ⚡ The Token Economy: Problem vs. Solution

Traditional AI coding assistants blindly crawl file trees and dump dozens of source files into the LLM context window—burning tens of thousands of tokens and causing context hallucinations.

| Feature | Standard AI Assistant | With Antigravity Subagents Toolkit |
| :--- | :--- | :--- |
| **Codebase Navigation** | Recursively greps and reads 30–60 raw files | Queries local **Graphify** AST index in milliseconds (**0 tokens**) |
| **Hook & Lifecycle Audit** | LLM "guesses" if `useEffect` dependencies are missing | **`eslint-plugin-react-hooks`** detects exact stale closures mathematically |
| **Bug & Error Location** | Reads whole 800-line files to find a syntax error | **`tsc --noEmit`** extracts exact line, column, and error code in 1.5s |
| **Database Audit** | Scans Prisma queries manually without context | **`prisma validate`** & **`npm audit`** run locally with zero tokens |
| **Average Token Cost / Task** | **15,000 – 45,000 tokens** | **200 – 600 tokens** *(~98% savings)* |

---

## 🧠 Architecture & Orchestration

```
                              ┌─────────────────────────────────────────┐
                              │           Orchestrator Agent            │
                              │       (Clean Context • Zero Bloat)      │
                              └────────────────────┬────────────────────┘
                                                   │
         ┌─────────────────────────────────────────┼─────────────────────────────────────────┐
         ▼                                         ▼                                         ▼
┌───────────────────────────────┐   ┌───────────────────────────────┐   ┌───────────────────────────────┐
│     🎨 FRONTEND SQUAD         │   │      ⚙️ BACKEND SQUAD          │   │   🧠 AUDIT & TEST SQUAD       │
├───────────────────────────────┤   ├───────────────────────────────┤   ├───────────────────────────────┤
│ • frontend-ui-specialist      │   │ • backend-systems-engineer    │   │ • cartographer (Graphify)     │
│   (browser_subagent, pa11y)   │   │   (nest build, docker, curl)  │   │ • solutions-architect (madge) │
│ • bundle-performance-auditor  │   │ • db-security-auditor         │   │ • quality-auditor (eslint)    │
│   (vite build, cost-of-mod)   │   │   (prisma validate, audit)    │   │ • surgical-fixer (tsc)        │
│                               │   │ • api-contract-tester (curl)  │   │ • test-engineer (jest, vitest)│
│                               │   │                               │   │ • dead-code-pruner (knip)     │
└───────────────────────────────┘   └───────────────────────────────┘   └───────────────────────────────┘
                                                   │
                                                   ▼
                               ┌─────────────────────────────────────────┐
                               │       Deterministic CLI Engines         │
                               │   (100% Local CPU • 0 LLM API Cost)     │
                               └─────────────────────────────────────────┘
```

---

## 👥 The Specialist Roster (11 Subagents)

### 🎨 Frontend Specialists
| Specialist | Role & Specialty | Deterministic CLI Engine | Example Triggers |
| :--- | :--- | :--- | :--- |
| **`frontend-ui-specialist`** | Modern UI/UX, glassmorphism, responsive viewports, micro-animations, component modularity. | **`browser_subagent`**<br>**`pa11y`** (accessibility) | *"Design this UI"*, *"Make this page look modern/premium"*, *"Fix mobile responsiveness"* |
| **`bundle-performance-auditor`** | Bundle size auditing, Vite asset footprints, code-splitting (`React.lazy`). | **`vite build asset table`**<br>**`cost-of-modules`** | *"Audit bundle size"*, *"Check lazy loading"*, *"Optimize page load performance"* |

### ⚙️ Backend Specialists
| Specialist | Role & Specialty | Deterministic CLI Engine | Example Triggers |
| :--- | :--- | :--- | :--- |
| **`backend-systems-engineer`** | NestJS module encapsulation, ACID database transactions, concurrency, idempotency, rate limiting. | **`nest build`**<br>**`docker compose`**, **`curl`** | *"Implement backend service"*, *"Handle checkout transactions"*, *"Prevent race conditions"* |
| **`db-security-auditor`** | Prisma query optimizer (N+1 leaks, indexing) and RBAC/security validation. | **`prisma validate`**<br>**`npm audit`**, **`graphify`** | *"Audit database queries"*, *"Check endpoint security/roles"*, *"Optimize Prisma"* |
| **`api-contract-tester`** | Testing REST endpoints, Swagger/OpenAPI synchronization, DTO validation. | **`curl`**<br>**`@nestjs/swagger`**, **`supertest`** | *"Test this API endpoint"*, *"Verify Swagger contracts"*, *"Check DTO validation"* |

### 🧠 System, Quality & Testing Specialists
| Specialist | Role & Specialty | Deterministic CLI Engine | Example Triggers |
| :--- | :--- | :--- | :--- |
| **`cartographer`** | Codebase mapping, AST call trees, and God Node detection. | **`graphify`** | Any search, architecture trace, or dependency lookup |
| **`solutions-architect`** | High-scalability feature design, decoupled architecture, and API contracts. | **`graphify god-nodes`**<br>**`madge --circular`** | *"Plan this feature"*, *"Design new module"*, *"How should we build X"* |
| **`quality-auditor`** | React hooks (`exhaustive-deps`), memory leaks, routing guards, NestJS DI. | **`eslint-plugin-react-hooks`**<br>**`madge`**, **`tsc`** | *"Check code quality"*, *"Review hook lifecycles"*, *"Audit routing"* |
| **`surgical-fixer`** | Zero-guess compiler diagnostics, targeted error fixing, minimal-token diffs. | **`tsc --noEmit`**<br>**`npm run build`**, **`jest`** | *"Fix this bug/error"*, *"Build failed"*, *"TypeScript type error"* |
| **`test-engineer`** | Autonomous unit & integration test generation, mock verification, coverage. | **`jest`**, **`vitest`**<br>**`supertest`** | *"Write tests for X"*, *"Verify regressions"*, *"Run unit tests"* |
| **`dead-code-pruner`** | Eliminating zombie code, unused exports, orphan files, and phantom packages. | **`knip`**<br>**`depcheck`** | *"Clean dead code"*, *"Find unused files"*, *"Prune phantom packages"* |

---

## 📦 Quick Start

### 1. Clone & Install Globally (Zero Setup)

Clone this repository and register all 11 specialists globally on your computer with a single command:

#### Windows (PowerShell):
```powershell
git clone https://github.com/nobiulhaque/antigravity-subagents-toolkit.git
cd antigravity-subagents-toolkit
powershell -ExecutionPolicy Bypass -File .\install.ps1 -Global
```

#### Linux / macOS (Bash):
```bash
git clone https://github.com/nobiulhaque/antigravity-subagents-toolkit.git
cd antigravity-subagents-toolkit
chmod +x install.sh update.sh
./install.sh
```

> **✨ Done!** All 11 specialists are registered in `~/.gemini/config/skills/`. They automatically activate across **any project or workspace you open with Antigravity**.

---

### 2. Install into a Specific Project (Team Sharing)

If you want to commit these subagents directly into your project's Git repository so your entire team shares the same specialist agents:

```powershell
.\install.ps1 -Target "C:\path\to\your\project"
```

*(Or on Linux/macOS: `./install.sh /path/to/your/project`)*

---

## 🔄 1-Click Community Updates

As new subagents, rules, and toolchains are contributed by the community, sync your entire environment with a single command:

**On Windows:**
```powershell
.\update.ps1
```

**On Linux / macOS:**
```bash
./update.sh
```

---

## ➕ How to Add a New Subagent in 2 Minutes

To add any custom specialist (e.g. `docker-operator`, `graphql-engineer`, `seo-auditor`):

1. Create a folder: `template/.agents/skills/<your-subagent-name>/`
2. Add a `SKILL.md` using this standard template:

```markdown
---
name: your-subagent-name
description: "Clear 1-sentence summary of what this specialist does and when it activates."
---

# Your Subagent Name (Tool-Assisted)

## Purpose
What specific, independent task does this subagent perform?

## Automated Toolchain (0 Token Cost)
- List the deterministic CLI tool(s) it runs (e.g. `npm test`, `pa11y`, `prisma validate`)

## Standard Operating Procedure (SOP)
1. Run the local CLI tool to get deterministic findings.
2. Read only the specific lines flagged by the tool (never whole files).
3. Return a concise, 3-point action plan or minimal diff.
```

3. Run `.\install.ps1 -Global` to immediately activate it machine-wide!

---

## 🤝 Community & Contributing

We welcome community subagents, tool optimizations, and feedback!
- Check out the [Contributing Guide](CONTRIBUTING.md) to submit a new specialist.
- Pitch a new specialist using our [Subagent Proposal Issue Template](.github/ISSUE_TEMPLATE/subagent-proposal.md).
- Automated CI validates all submitted subagents via GitHub Actions.

---

## 📄 License

Distributed under the [MIT License](LICENSE). Built with ❤️ for the Google Antigravity & AI Developer Community.
