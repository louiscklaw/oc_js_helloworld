# AI_TODO

## purpose

imagine you are on the project root directory, and you are a backend engineer.
plesae do the check as per `tasks` described.

## background

this is a `nextjs` project under migration.
the code about `customer` and `customers` is known good and can be regards as a template.
the code `warehouse` and `employee` is the migrated code from `customer` and `customers`. You may found faulty.
please read `AGENTS.md` for more detail.
the endpoint directory for CRUD were located in `src/app/api/db/<model>`
the schema is managed by `prisma/schema.prisma`
the testing framework for api e2e test is `mocha`
the helloworld example available at `src/app/api/db/helloworld/route.sanity.js`

## tasks

1. Read the current workspace
1. initialize task directory and file(s):
   1. `./.tmp` for your workspace
   1. `./.tmp/ai_commit_message.md` to keep track your commit message.
   1. initialize a `TODO` list and write it into `./.tmp/AI_TODO.md`.
     1. keep track the sub-task(s) need to be done using this file.
1. please run `pnpm run app_AI_code_selfcheck` to check the result, writ it to `./.tmp/test_before.out`
1. examine the existing endpoint structure in `src/app/api/db/` to identify all available endpoints:
   1. `customer` and `customers` (known good templates)
   1. `warehouse` and `employee` (migrated code, may have issues)
   1. `work-order` (if exists)
   1. `finished-product` (if exists)
   1. `raw-material` (if exists)
   1. `operation-log` (if exists)
1. examine the existing helloworld test patterns in `dashboard_app_ai/src/app/dashboard/__tests__/page.test.tsx` to understand the testing approach
1. create sanity tests for all identified endpoints:
   1. For each endpoint found in `src/app/api/db/<model>`:
      1. there is a helloworld example available at `src/app/api/db/helloworld/route.sanity.js`
      1. Create a basic test file at `src/db/<models>/route.sanity.js`
      1. perform e2e test just like the example did.
      1. Include a simple "hello world" style test that verifies the endpoint is accessible
      1. Test basic connectivity to the API endpoints
      1. Include a simple GET request test to verify the endpoint responds correctly
      1. Add basic response validation (status code, response structure)
1. ensure all tests follow the same pattern as existing helloworld tests but focused on their respective endpoints
1. keep all tests simple and focused on basic functionality verification
1. create a comprehensive test suite that covers all CRUD operations for each endpoint:
   1. GET (list and single record)
   1. POST (create)
   1. PUT/PATCH (update)
   1. DELETE (remove)
1. update the `test.http` file to include sanity tests for all endpoints
1. create nodejs simple scripts with `request` to test all endpoint(s) CRUD operations
1. ensure all tests are consistent and follow the same patterns across all endpoints

## operation

1. divide your job into sub-task(s). keep them track in `./.tmp/AI_TODO.md`
1. when you finish a sub-task, please mark it as done in `./.tmp/AI_TODO.md`
1. when you finish a sub-task run `pnpm run app_AI_code_selfcheck` for regression(s).
1. when regression(s) found. write the problem(s) in `./.tmp/AI_TODO.md` and fix it.

## after job done

1. please run `pnpm run app_AI_code_selfcheck` to check the result, pipe the output to `./.tmp/test_after.out`.
1. please compare the `./.tmp/test_before.out` and `./.tmp/test_after.out`. fix it when you find regression(s).
1. prepare commit message in `./.tmp/ai_commit_message.md`.
   1. commit your change and describe your change in commit message.
   1. Do not include the `build status` and `build result`
1. improve this document to let the decentent AI easy to understand.

## commit message requirements

- put commit message described in `./.tmp/ai_commit_message.md`.

## tools about MCP

If you are unsure how to do something, use `gh_grep` to search code examples from GitHub.

## expected deliverables

1. Sanity test files for all endpoints in `src/db/models/<model>-entity.sanity-test.ts`
2. Updated `test.http` with comprehensive endpoint tests
3. NodeJS scripts for CRUD operation testing
4. Comprehensive test coverage for all identified endpoints

thanks.