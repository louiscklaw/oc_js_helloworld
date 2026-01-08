# task1

## purpose

i want you to draft the test for the dashboard components instead of the page.tsx

## background

the source you operate is at `source` folder.
the `./.tmp` folder is for your referenc.

this is a `nextjs` project under migration.
the code about `dashboard` components is known good and can be regards as a template.
the `src/components/dashboard/customer/__tests__/payments.test.tsx` is a good example for page tests, but you should focus on component tests.
the test should not in deep at the moment. just a helloworld sanity test with snapshot is good enough.

focus on components in `develop_trunk/src/components/dashboard/` directory:
- dashboard/academy/chapter-step-icon.tsx
- dashboard/academy/chapter-view.tsx
- dashboard/academy/course-card.tsx
- dashboard/academy/course-summary.tsx
- dashboard/academy/courses-filters.tsx
- dashboard/academy/daily-progress.tsx
- dashboard/academy/help.tsx
- dashboard/academy/lesson.tsx
- dashboard/academy/types.d.ts
- dashboard/chat/chat-context.tsx
- dashboard/chat/chat-view.tsx
- dashboard/chat/compose-view.tsx
- dashboard/chat/direct-search.tsx
- dashboard/chat/group-recipients.tsx
- dashboard/chat/message-add.tsx
- dashboard/chat/message-box.tsx
- dashboard/chat/sidebar.tsx
- dashboard/chat/thread-item.tsx
- dashboard/chat/thread-toolbar.tsx
- dashboard/chat/thread-view.tsx
- dashboard/chat/types.d.ts
- dashboard/i18n/content-server.tsx
- dashboard/product/product-create-form.tsx
- dashboard/product/product-edit-form.tsx
- dashboard/product/product-modal.tsx
- dashboard/product/products-filters.tsx
- dashboard/product/products-pagination.tsx
- dashboard/product/products-table.tsx

## tasks

1. Read the current workspace
1. initialize task directory and file(s):
  1. `./.tmp` for your workspace
  1. `./.tmp/ai_commit_message.md` to keep track your commit message.
  1. initialize a `TODO` list and write it into `./.tmp/AI_TODO.md`.
    1. keep track the sub-task(s) need to be done using this file.
1. please run `pnpm test` to check the result, writ it to `./.tmp/test_before.out`
1. please help me build this project by `pnpm i` and  `pnpm run build` .
1. please run `pnpm test` and check the result for error(s) and write it down in `./.tmp/AI_TODO.md`
1. solve the error in `./.tmp/AI_TODO.md`.
1. please update `AGENTS.md` according to current workspace.


## operation

1. divide your job into sub-task(s). keep them track in `./.tmp/AI_TODO.md`
1. when you finish a sub-task, please mark it as done in `./.tmp/AI_TODO.md`
1. when you finish a sub-task run `pnpm run ai_selfcheck` for regression(s).
1. when regression(s) found. write the problem(s) in `./.tmp/AI_TODO.md` and fix it.


## after job done

1. please run `pnpm test` to check the result, pipe the output to `./.tmp/test_after.out`.
1. please compare the `./.tmp/test_before.out` and `./.tmp/test_after.out`. fix it when you find regression(s).
1. prepare commit message in `./.tmp/ai_commit_message.md`.
  1. commit your change and describe your change in commit message.
  1. Do not include the `build status` and `build result`
1. improve this document to let the decentent AI easy to understand.

## commit message requirements

- put commit message described in `./.tmp/ai_commit_message.md`.

## tools about MCP

If you are unsure how to do something, use `gh_grep` to search code examples from GitHub.