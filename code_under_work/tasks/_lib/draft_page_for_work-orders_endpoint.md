# AI_TODO

## purpose

imagine you are on the project root directory, and you are a frontend engineer.
plesae do the check as per `tasks` described.

## background

the source you operate is at `source` folder.
`./.tmp` for your workspace.

this is a `nextjs` project under migration.
the code about `customer` and `customers` is known good and can be regards as a template.
the code `warehouse` and `employee` is the migrated code from `customer` and `customers`. You may found faulty.
please read `AGENTS.md` for more detail.
the dashboard pages are located in `src/app/dashboard/<model>`
the components are located in `src/components/dashboard/<model>`
the API endpoints are located in `src/app/api/db/<model>`

## tasks

1. Read the current workspace
1. initialize task directory and file(s):
  1. `./.tmp` for your workspace
  1. `./.tmp/ai_commit_message.md` to keep track your commit message.
  1. initialize a `TODO` list and write it into `./.tmp/AI_TODO.md`.
    1. keep track of the sub-task(s) need to be done using this file.
1. please run `pnpm run app_AI_code_selfcheck` to check the result, writ it to `./.tmp/test_before.out`
1. examine the existing warehouse and employee dashboard pages to understand the structure:
   1. `src/app/dashboard/warehouse/page.tsx`
   1. `src/app/dashboard/employees/page.tsx`
1. examine the existing components structure:
   1. `src/components/dashboard/warehouse/`
   1. `src/components/dashboard/employees/`
1. create the work-orders dashboard page at `src/app/dashboard/work-orders/page.tsx`:
   1. Follow the same pattern as warehouse and employee pages
   1. Include search params for filtering (order number, status, priority, assigned employee, date range, etc.)
   1. Include sorting functionality
   1. Include pagination
   1. Include "Add New" button
   1. Connect to the work-orders API endpoints
1. create the necessary components for work-orders:
   1. `src/components/dashboard/work-orders/work-orders-filters.tsx`
   1. `src/components/dashboard/work-orders/work-orders-table.tsx`
   1. `src/components/dashboard/work-orders/work-orders-pagination.tsx`
   1. `src/components/dashboard/work-orders/work-orders-selection-context.tsx`
   1. `src/components/dashboard/work-orders/i-work-order.tsx`
1. create the API integration functions:
   1. `src/app/dashboard/work-orders/api/list-work-orders-row.ts`
1. create the create page:
   1. `src/app/dashboard/work-orders/create/page.tsx`
1. create the edit page:
   1. `src/app/dashboard/work-orders/edit/[rowId]/page.tsx`
1. create the detail page:
   1. `src/app/dashboard/work-orders/[rowId]/page.tsx`
1. update the paths configuration to include work-orders routes
1. create comprehensive test scenarios including:
   1. page rendering tests
   1. filter functionality tests
   1. sorting functionality tests
   1. pagination tests
   1. CRUD operation tests
1. ensure all components follow the same design patterns as existing warehouse and employee components
1. ensure proper error handling and loading states
1. consider work-order specific features:
   1. status tracking (pending, in-progress, completed, cancelled)
   1. priority levels (low, medium, high, urgent)
   1. employee assignment
   1. material usage tracking
   1. timeline/gantt view considerations

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
