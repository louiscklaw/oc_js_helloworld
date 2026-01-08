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
1. examine the existing edit pages to understand the structure:
   1. `src/app/dashboard/warehouse/edit/[rowId]/page.tsx` (if exists)
   1. `src/app/dashboard/employees/edit/[rowId]/page.tsx` (if exists)
   1. `src/app/dashboard/customers/edit/[rowId]/page.tsx` (as template)
1. examine the existing form components structure for editing:
   1. `src/components/dashboard/warehouse/` edit-related components
   1. `src/components/dashboard/employees/` edit-related components
   1. `src/components/dashboard/customers/` edit-related components (as template)
1. create the finished-products edit page at `src/app/dashboard/finished-products/edit/[rowId]/page.tsx`:
   1. Follow the same pattern as existing edit pages
   1. Include dynamic routing with rowId parameter
   1. Load existing finished-product data for pre-filling the form
   1. Include form validation for updates
   1. Include proper error handling
   1. Include loading states during data fetch and submission
   1. Include success/error notifications
   1. Connect to the finished-products API endpoints for GET (single record) and PUT/PATCH operations
   1. Include navigation back to list page or detail page after successful update
   1. Include cancel button with proper navigation
   1. Handle cases where the finished-product doesn't exist (404 handling)
1. create the necessary form components for finished-products edit:
   1. `src/components/dashboard/finished-products/finished-products-edit-form.tsx`
   1. Reuse existing form fields from create page where appropriate
   1. `src/components/dashboard/finished-products/finished-products-form-fields.tsx` (extend if needed)
   1. `src/components/dashboard/finished-products/finished-products-form-validation.tsx` (extend if needed)
1. create the API integration functions for edit operations:
   1. `src/app/dashboard/finished-products/api/get-finished-product.ts` (to fetch single record)
   1. `src/app/dashboard/finished-products/api/update-finished-product.ts` (to update existing record)
1. implement finished-product specific edit functionality:
   1. Pre-populate all form fields with existing data
   1. Handle product information updates (name, description, category)
   1. Handle SKU and product code changes with validation
   1. Handle price and cost information updates
   1. Handle inventory and stock level adjustments
   1. Handle quality control status changes
   1. Handle supplier information updates
   1. Handle product specifications and attributes modifications
   1. Handle manufacturing details updates
   1. Handle status and lifecycle management changes
1. ensure proper form validation for all fields during edit:
   1. Required field validation
   1. Data type validation (numbers, dates, etc.)
   1. Business logic validation (SKU uniqueness check excluding current record, etc.)
   1. Custom validation for finished-product specific rules
   1. Validation for changes that affect business logic
1. ensure proper error handling:
   1. API error handling and display for both fetch and update operations
   1. Form validation error display
   1. Network error handling
   1. 404 error handling for non-existent records
   1. User-friendly error messages
   1. Handling of concurrent modification conflicts
1. ensure data integrity and consistency:
   1. Proper handling of unchanged fields
   2. Validation of data relationships
   3. Handling of dependent data updates
   4. Audit trail considerations
1. ensure accessibility compliance:
   1. Proper form labels and ARIA attributes
   1. Keyboard navigation support
   1. Screen reader compatibility
   1. Error announcement for screen readers
1. ensure responsive design:
   1. Mobile-friendly form layout
   1. Proper field sizing on different screen sizes
   1. Touch-friendly controls
1. create comprehensive test scenarios for the edit page:
   1. Page rendering tests with different data states
   1. Form pre-population tests
   1. Form validation tests
   1. API integration tests (both fetch and update)
   1. Error handling tests (404, validation errors, network errors)
   1. Navigation tests
   1. Accessibility tests
   1. Data integrity tests
1. ensure all components follow the same design patterns as existing warehouse and employee edit components
1. ensure proper integration with the finished-products list page, detail page, and other related pages
1. implement proper loading states for data fetching and form submission
1. add optimistic UI updates where appropriate for better user experience

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

1. Finished-products edit page at `src/app/dashboard/finished-products/edit/[rowId]/page.tsx`
2. Edit form components for finished-products modification
3. API integration functions for fetch and update operations
4. Comprehensive form validation and error handling for edit scenarios
5. Test coverage for all edit functionality including edge cases
6. Responsive and accessible form design for editing
7. Proper data loading and pre-population functionality

thanks.