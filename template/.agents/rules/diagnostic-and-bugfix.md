# Targeted Diagnostic & Bug-Fixing Rules (Token Optimization)

## 1. Zero Blind-Scanning Policy
- **NEVER blindly crawl or view dozens of project files to search for bugs or type errors.**
- Doing so wastes thousands of context tokens and creates hallucinations.
- Always obtain exact error locations by running compiler/type-checker diagnostics first:
  - **Frontend:** `npx tsc --noEmit -p apps/web/tsconfig.json` or `npm run build --workspace=apps/web`
  - **Backend:** `npx tsc --noEmit -p apps/api/tsconfig.build.json` or `npm run build --workspace=apps/api`
  - **Linting:** `npx eslint <path> --max-warnings 0`

## 2. Surgical Inspection & Patching
- Read **only the specific lines** reported by compiler diagnostics (e.g. `StartLine` and `EndLine` for the 25–40 lines around the error).
- Do not view or rewrite the whole file for a local bug.
- Apply modern, type-safe fixes:
  - Strict null/undefined checks (`(p.brand || '').toLowerCase()`, optional chaining `?.`).
  - Correct API/DTO response unpacking (`(data as any)?.products || data?.data || []`).
  - Strict typing (avoid indiscriminate `any` casting).
  - Proper FormData serialization (`JSON.stringify` for objects/arrays).

## 3. Mandatory Verification Pass
- Always re-run the diagnostic command (`npm run build`) after modifying code to verify that:
  1. The target error is resolved.
  2. Zero new compilation or type errors were introduced.

Reference: Full pipeline at `Ecom/guidelines/diagnostic-and-bugfix-pipeline.md`.
