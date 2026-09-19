# Frontend Component Refactoring Rules & Size Constraints

## 1. File Size Ceiling (250–300 Lines Max)
- **Target Component Size:** 100–180 lines.
- **Hard Upper Limit:** 250–300 lines maximum for any single `.tsx` or `.ts` file.
- Proactively decompose components when they approach 250 lines.

## 2. Progressive "Touch-and-Refactor" Rule
- Whenever tasked with updating, fixing, or extending an existing page or component that exceeds ~250–300 lines (e.g., `ProductsPage.tsx`, `CheckoutPage.tsx`, `ProductDetailPage.tsx`, `OrdersPage.tsx`, `ProfilePage.tsx`), **you MUST refactor that page into multiple modular files as part of your task**.
- **NEVER append new code to an existing monolith.**

## 3. Standard Modular Decomposition
When refactoring or creating a page, break it into:
- **Orchestrator Page** (`XPage.tsx`, < 150 lines): Renders layout, wires top-level hooks, passes props down.
- **Subcomponents** (`components/`): Independent visual sections, tables, rows, toolbar, cards.
- **Modals / Drawers** (`components/XxxDialog.tsx`): Extracted out of the main page JSX.
- **Custom Hooks** (`hooks/useXxx.ts`): Queries, filter states, selection logic, mutation handlers.
- **Types & Helpers** (`types.ts`, `utils.ts`): Local interfaces and helper functions.

Reference: Detailed pipeline available at `Ecom/guidelines/refactoring-pipeline.md`.
