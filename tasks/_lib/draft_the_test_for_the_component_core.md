# task1

## purpose

i want you to draft the test for the core components instead of the page.tsx

## background

the source you operate is at `source` folder.
the `./.tmp` folder is for your referenc.

this is a `nextjs` project under migration.
the code about `core` components is known good and can be regards as a template.
the `src/components/dashboard/customer/__tests__/payments.test.tsx` is a good example for page tests, but you should focus on component tests.
the test should not in deep at the moment. just a helloworld sanity test with snapshot is good enough.

focus on components in `develop_trunk/src/components/core/` directory:
- core/analytics.tsx
- core/breadcrumbs-separator.tsx
- core/code-highlighter.tsx
- core/data-table.tsx
- core/emotion-cache.tsx
- core/file-dropzone.tsx
- core/file-icon.tsx
- core/filter-button.tsx
- core/i18n-provider.tsx
- core/localization-provider.tsx
- core/logo.tsx
- core/multi-select.tsx
- core/no-ssr.tsx
- core/option.tsx
- core/pdf-viewer.tsx
- core/presence.tsx
- core/property-item.tsx
- core/property-list.tsx
- core/rtl.tsx
- core/theme-provider.tsx
- core/tip.tsx
- core/toaster.tsx
- core/dropdown/dropdown-context.tsx
- core/dropdown/dropdown-popover.tsx
- core/dropdown/dropdown-trigger.tsx
- core/dropdown/dropdown.tsx
- core/settings/option.tsx
- core/settings/options-color-scheme.tsx
- core/settings/options-direction.tsx
- core/settings/options-layout.tsx
- core/settings/options-nav-color.tsx
- core/settings/options-primary-color.tsx
- core/settings/settings-button.tsx
- core/settings/settings-context.tsx
- core/settings/settings-drawer.tsx
- core/text-editor/text-editor-toolbar.tsx
- core/text-editor/text-editor.tsx

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