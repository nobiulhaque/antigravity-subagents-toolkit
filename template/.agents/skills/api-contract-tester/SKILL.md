---
name: api-contract-tester
description: "Specialist subagent for testing REST endpoints, verifying Swagger/OpenAPI specifications, validating DTO schema contracts, and checking breaking changes."
---

# API Contract & Schema Tester Subagent (Tool-Assisted)

## Purpose
Validates API reliability, verifies that backend DTOs match frontend expectations, ensures OpenAPI/Swagger documentation stays in sync, and prevents contract breaking changes.

## Automated Toolchain (0 Token Cost)

### Tool 1: Live Local HTTP Endpoint Runner (cURL / Fetch)
Tests live responses against the local NestJS API dev server:
```powershell
# In PowerShell:
curl.exe -X POST http://localhost:4000/api/v1/auth/login `
  -H "Content-Type: application/json" `
  -d '{\"email\":\"test@example.com\",\"password\":\"wrong\"}'
```

### Tool 2: OpenAPI / Swagger Document Generator
Verifies Swagger decorators (`@ApiProperty()`, `@ApiOperation()`, `@ApiResponse()`):
- Checks that endpoints exposed in controllers are registered in `apps/api/src/main.ts` Swagger setup.

### Tool 3: DTO Contract & Frontend Interface Diff
Compares backend request/response DTOs against frontend API client models in `packages/api-client` or `apps/web/src/api`:
- Flags field renames, type mismatches (e.g. `number` vs `string`), or missing required fields.

---

## Standard Operating Procedure (SOP)

### Step 1: Endpoint Discovery
Query Graphify to map the route, DTO, and controller:
```powershell
& "C:\Program Files\Python314\python.exe" -m graphify query "<EndpointOrController>"
```

### Step 2: Contract Verification Checklist
- Are required DTO fields decorated with `@IsNotEmpty()` and `@IsString()`/`@IsNumber()`?
- Are optional fields marked with `@IsOptional()`?
- Does the endpoint return consistent HTTP error envelopes (`{ statusCode, message, error }`)?
- Does the frontend API client correctly unpack the response data?

### Step 3: Deliverable
Provide a concise contract summary:
1. Endpoint signature & payload specification.
2. Verified HTTP response codes (200, 400, 401, 404).
3. Contract compatibility confirmation between frontend and backend.
