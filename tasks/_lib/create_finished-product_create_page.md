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
1. examine the existing create pages to understand the structure:
   1. `src/app/dashboard/warehouse/create/page.tsx` (if exists)
   1. `src/app/dashboard/employees/create/page.tsx` (if exists)
   1. `src/app/dashboard/customers/create/page.tsx` (as template)
1. examine the existing form components structure:
   1. `src/components/dashboard/warehouse/` create-related components
   1. `src/components/dashboard/employees/` create-related components
   1. `src/components/dashboard/customers/` create-related components (as template)
1. create the finished-products create page at `src/app/dashboard/finished-products/create/page.tsx`:
   1. Follow the same pattern as existing create pages
   1. Include form validation
   1. Include proper error handling
   1. Include loading states during submission
   1. Include success/error notifications
   1. Connect to the finished-products API endpoints for POST operations
   1. Include navigation back to list page after successful creation
   1. Include cancel button with proper navigation
1. create the necessary form components for finished-products create:
   1. `src/components/dashboard/finished-products/finished-products-create-form.tsx`
   1. `src/components/dashboard/finished-products/finished-products-form-fields.tsx`
   1. `src/components/dashboard/finished-products/finished-products-form-validation.tsx`
1. create the API integration functions for create operation:
   1. `src/app/dashboard/finished-products/api/create-finished-product.ts`
1. implement finished-product specific form fields:
   1. Product name and description
   1. Product category and subcategory
   1. SKU and product code
   1. Price and cost information
   1. Inventory and stock levels
   1. Quality control settings
   1. Supplier information
   1. Product specifications and attributes
   1. Manufacturing details
   1. Status and lifecycle management
1. ensure proper form validation for all fields:
   1. Required field validation
   1. Data type validation (numbers, dates, etc.)
   1. Business logic validation (SKU uniqueness, etc.)
   1. Custom validation for finished-product specific rules
1. ensure proper error handling:
   1. API error handling and display
   1. Form validation error display
   1. Network error handling
   1. User-friendly error messages
1. ensure accessibility compliance:
   1. Proper form labels and ARIA attributes
   1. Keyboard navigation support
   1. Screen reader compatibility
1. ensure responsive design:
   1. Mobile-friendly form layout
   1. Proper field sizing on different screen sizes
   1. Touch-friendly controls
1. create comprehensive test scenarios for the create page:
   1. Form rendering tests
   1. Form validation tests
   1. API integration tests
   1. Error handling tests
   1. Navigation tests
   1. Accessibility tests
1. ensure all components follow the same design patterns as existing warehouse and employee create components
1. ensure proper integration with the finished-products list page and other related pages

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

1. Finished-products create page at `src/app/dashboard/finished-products/create/page.tsx`
2. Form components for finished-products creation
3. API integration functions for create operations
4. Comprehensive form validation and error handling
5. Test coverage for all create functionality
6. Responsive and accessible form design

thanks.