# Contributing to Antigravity Subagents Toolkit 🤝

We welcome community contributions! This toolkit improves and expands as the community adds specialized subagents, sharper toolchains, and token-saving workflows.

---

## 🌟 How You Can Contribute

1. **Add a New Specialist Subagent:** Create a subagent for a domain not currently covered (e.g. `docker-kubernetes-operator`, `mobile-react-native-specialist`, `graphql-schema-engineer`, `seo-accessibility-auditor`).
2. **Enhance Existing Toolchains:** Add better, faster deterministic CLI tools to existing subagents (e.g., upgrading a linter or test runner).
3. **Improve Token Efficiency Rules:** Refine prompt SOPs to consume fewer tokens and reduce hallucinations.
4. **Report Bugs & Incompatibilities:** Report any CLI command failures across Windows, macOS, or Linux.

---

## 🛠️ Subagent Specification Standard

Every community subagent must adhere to the **3 Core Tenets**:

### 1. Zero Hallucination via Deterministic Tooling
A subagent cannot rely on LLM intuition where a deterministic CLI engine exists. Always anchor the subagent with real tools (e.g., `tsc`, `jest`, `knip`, `prisma validate`, `madge`, `pa11y`).

### 2. Zero Blind-Scanning (Token Minimization)
Subagents are strictly forbidden from scanning whole directories or reading dozens of files blindly. They must use Graphify AST indexes or compiler diagnostics to pinpoint exact line numbers.

### 3. Clean Standard File Format
Create a folder in `template/.agents/skills/<subagent-name>/` with a `SKILL.md`:

```markdown
---
name: your-subagent-name
description: "Clear 1-sentence summary of what this specialist does and when it activates."
---

# Your Subagent Name (Tool-Assisted)

## Purpose
What specific, independent task does this subagent perform?

## Automated Toolchain (0 Token Cost)
List the exact CLI tools it runs:
- `tool-1` (what it does)
- `tool-2` (what it does)

## Standard Operating Procedure (SOP)
1. Step 1: Tool execution
2. Step 2: Line-targeted surgical inspection
3. Step 3: Concise report or minimal diff

## Standards & Checklists
Specific domain rules the specialist enforces.
```

---

## 🚀 Submitting Your Contribution

1. **Fork** the repository.
2. **Create a branch**: `git checkout -b subagent/your-subagent-name`.
3. **Add your subagent** into `template/.agents/skills/<your-subagent-name>/`.
4. **Update registries**: Add your subagent to `README.md` and `template/.agents/SUBAGENTS.md`.
5. **Test locally**: Run `.\install.ps1 -Global` to verify it registers without errors.
6. **Open a Pull Request** with the PR template.
