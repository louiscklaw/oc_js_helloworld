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
1. examine the existing detail/view pages to understand the structure:
   1. `src/app/dashboard/warehouse/[rowId]/page.tsx` (if exists)
   1. `src/app/dashboard/employees/[rowId]/page.tsx` (if exists)
   1. `src/app/dashboard/customers/[rowId]/page.tsx` (as template)
1. examine the existing detail/view components structure:
   1. `src/components/dashboard/warehouse/` detail-related components
   1. `src/components/dashboard/employees/` detail-related components
   1. `src/components/dashboard/customers/` detail-related components (as template)
1. create the finished-products view page at `src/app/dashboard/finished-products/[rowId]/page.tsx`:
   1. Follow the same pattern as existing detail/view pages
   1. Include dynamic routing with rowId parameter
   1. Load and display finished-product data in a comprehensive view
   1. Include proper error handling for non-existent records (404 handling)
   1. Include loading states during data fetch
   1. Include navigation controls (back to list, edit, delete)
   1. Connect to the finished-products API endpoints for GET (single record) operations
   1. Include related data display (inventory, transactions, etc.)
1. create the necessary view components for finished-products:
   1. `src/components/dashboard/finished-products/finished-products-detail-view.tsx`
   1. `src/components/dashboard/finished-products/finished-products-info-card.tsx`
   1. `src/components/dashboard/finished-products/finished-products-status-badge.tsx`
   1. `src/components/dashboard/finished-products/finished-products-related-data.tsx`
   1. `src/components/dashboard/finished-products/finished-products-action-buttons.tsx`
1. create the API integration functions for view operations:
   1. `src/app/dashboard/finished-products/api/get-finished-product.ts` (to fetch single record)
   1. `src/app/dashboard/finished-products/api/get-finished-product-related-data.ts` (for related inventory, transactions, etc.)
1. implement finished-product specific view functionality:
   1. Display comprehensive product information:
      - Product name, description, SKU, product code
      - Category and subcategory information
      - Price and cost details
      - Current inventory levels and stock status
      - Quality control status and inspection results
      - Supplier and vendor information
      - Product specifications and attributes
      - Manufacturing details and production data
      - Product lifecycle and status information
   1. Display related data sections:
      - Inventory history and movements
      - Recent transactions and orders
      - Quality control records
      - Supplier interactions
      - Production history
   1. Include action buttons for:
      - Edit product (navigate to edit page)
      - Delete product (with confirmation)
      - Print/export product details
      - Duplicate product
      - Change status
1. ensure proper data presentation:
   1. Clear and organized layout
   1. Proper data formatting (currency, dates, numbers)
   1. Visual indicators for status and alerts
   1. Responsive design for different screen sizes
   1. Print-friendly layout option
1. ensure proper error handling:
   1. 404 error handling for non-existent records
   1. API error handling and display
   1. Network error handling
   1. User-friendly error messages
   1. Fallback content for missing data
1. ensure accessibility compliance:
   1. Proper semantic HTML structure
   1. ARIA labels and descriptions
   1. Keyboard navigation support
   1. Screen reader compatibility
   1. High contrast mode support
1. ensure responsive design:
   1. Mobile-friendly layout
   1. Adaptive content organization
   1. Touch-friendly controls
   1. Proper information hierarchy on small screens
1. implement interactive features:
   1. Expandable/collapsible sections for detailed information
   1. Tabs or accordions for organizing related data
   1. Quick actions dropdown menu
   1. Data refresh functionality
   1. Print/export options
1. create comprehensive test scenarios for the view page:
   1. Page rendering tests with different data states
   1. Data display accuracy tests
   1. Navigation tests
   1. Error handling tests (404, API errors, network errors)
   1. Accessibility tests
   1. Responsive design tests
   1. Interactive feature tests
   1. Print/export functionality tests
1. ensure all components follow the same design patterns as existing warehouse and employee view components
1. ensure proper integration with the finished-products list page, edit page, and other related pages
1. implement proper loading states and skeleton screens for better user experience
1. add breadcrumb navigation for better user orientation
1. implement data caching strategies for improved performance

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

1. Finished-products view page at `src/app/dashboard/finished-products/[rowId]/page.tsx`
2. Detail view components for comprehensive product information display
3. API integration functions for fetching single records and related data
4. Comprehensive error handling and loading states
5. Test coverage for all view functionality including edge cases
6. Responsive and accessible detail view design
7. Interactive features for enhanced user experience
8. Proper navigation integration with other finished-products pages

thanks.