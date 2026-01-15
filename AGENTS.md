# AGENTS.md

This document contains guidelines and commands for agentic coding agents working in this repository.

## Build/Lint/Test Commands

### Available Scripts
- `npm install` or `pnpm install` - Install dependencies
- `node index.js` - Run the main application (outputs "helloworld")
- `npm test` - Currently shows "Error: no test specified" (no test framework configured)
- `npm run ai_selfcheck` - Runs the application and outputs "done"
- `npm run ai_mobile_build_test` - Builds mobile app (if mobile directory exists)
- `./scripts/ai_selfcheck.sh` - Alternative way to run self-check
- `./scripts/ai_reset_env.sh` - Reinstalls dependencies

### Running Single Tests
No test framework is currently configured. When adding tests:
1. Choose a testing framework (Jest, Mocha, etc.)
2. Update package.json scripts section
3. Add configuration files as needed

## Code Style Guidelines

### Language and Runtime
- **Primary Language**: JavaScript (Node.js)
- **Runtime**: Node.js
- **Module System**: CommonJS (require/module.exports)

### File Structure
```
.
├── index.js          # Main application entry point
├── package.json      # Project configuration and dependencies
├── scripts/          # Shell scripts for automation
│   ├── ai_selfcheck.sh
│   └── ai_reset_env.sh
├── .tmp/            # Temporary files (gitignored)
└── docs/            # Documentation (add as needed)
```

### Import Conventions
- Use CommonJS syntax: `const library = require('library')`
- Place imports at the top of files
- Group imports: built-in modules, third-party libraries, local modules
- No ES6 imports unless project is migrated to ES modules

### Code Formatting
- Use 2 spaces for indentation
- Prefer single quotes for strings
- Keep lines under 80 characters when possible
- Add trailing commas in objects and arrays

### Naming Conventions
- **Variables and functions**: camelCase (`myVariable`, `myFunction`)
- **Constants**: UPPER_SNAKE_CASE (`MAX_RETRIES`)
- **Files**: kebab-case or camelCase (my-file.js or myFile.js)
- **Directories**: kebab-case (my-directory/)

### Error Handling
- Use try-catch blocks for synchronous code that might throw
- Use .catch() for Promise rejections
- Log errors with meaningful messages
- Consider using process.exit(1) for fatal errors

### Dependencies
- **Current Dependencies**: axios (v1.13.2)
- Install new dependencies with `npm install <package> --save`
- For dev dependencies, use `npm install <package> --save-dev`
- Always check package.json before assuming a library is available

### Shell Scripts
- Use `#!/usr/bin/env bash` shebang
- Include `set -ex` for strict mode and verbose output
- Make scripts executable with `chmod +x`
- End scripts with "done" for consistency

### Git Guidelines
- .tmp/ and node_modules/ are gitignored
- Commit package-lock.json if using npm
- Write clear, concise commit messages
- Run `npm run ai_selfcheck` before committing if available

### Code Quality
- No linting framework currently configured
- Consider adding ESLint for code quality
- Consider adding Prettier for formatting
- Test code by running it before committing

### Debugging
- Use console.log() for debugging (remove before committing)
- Check package.json scripts for available debugging commands
- Use Node.js debugger if needed: `node inspect index.js`

### Mobile Development
- Mobile app should be in `mobile/` directory
- Build with `npm run ai_mobile_build_test`
- Follow same coding conventions as main project

## Development Workflow
1. Install dependencies: `npm install` or `./scripts/ai_reset_env.sh`
2. Make changes to code
3. Test with `node index.js`
4. Run self-check: `npm run ai_selfcheck`
5. Commit changes (if explicitly requested)

## Notes for Agents
- This is a minimal "Hello World" JavaScript project
- Currently no testing framework, linting, or type checking configured
- The main script has a typo: "consol1e.log" should be "console.log"
- When adding new features, follow the established patterns
- Always check that dependencies exist before using them
- The project uses ISC license