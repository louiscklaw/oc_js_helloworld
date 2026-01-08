# AGENTS.md - AI Task Runner Guidelines

This document provides essential guidelines for AI agents working in this AI Task Runner repository.

## Overview

This is an automated task processing system that manages and executes development tasks using AI assistance. The system handles the complete lifecycle of task management including environment setup, Git operations, automated testing, and intelligent correction loops.

## Build/Lint/Test Commands

### Core Testing
- **Primary test command**: `./scripts/ai_selfcheck.sh` - Run validation tests from the `code_under_work` directory
- **Environment reset**: `./scripts/ai_reset_env.sh` - Prepare/clean environment before modifications
- **Test execution flow**: Tests run before and after each modification to validate changes

### Task Processing
- **Main runner**: `./run.sh` - Bash-based task processor (recommended)
- **Python alternative**: `python3 task_runner.py <task_name>` - Python task processor
- **Task execution**: `./OcRunTask.sh` - AI assistant wrapper for task execution
- **Correction handling**: `./OcRunCorrection.sh` - AI assistant wrapper for fix attempts

### Running Single Tests
The system uses `ai_selfcheck.sh` as the primary test validator. To run tests manually:
```bash
cd code_under_work
./scripts/ai_selfcheck.sh
```

## Project Structure

```
code_under_work/                    # Primary working directory
├── scripts/                       # Essential utility scripts
│   ├── ai_selfcheck.sh           # Test validation (REQUIRED)
│   └── ai_reset_env.sh           # Environment setup (REQUIRED)
├── .tmp/                         # Task-specific workspace
├── prompts/                      # AI prompt configurations
└── tasks/
    ├── _queue/                   # Active task queue
    └── _done/                    # Completed tasks
```

## Code Style Guidelines

### Python Scripts
- **Shebang**: Use `#!/usr/bin/env python3`
- **Encoding**: UTF-8 with explicit encoding parameter
- **Error handling**: Use try/except blocks with subprocess.CalledProcessError
- **Functions**: Use snake_case naming with descriptive names
- **Imports**: Group imports (standard library, third-party, local)
- **Constants**: Use UPPER_SNAKE_CASE for global constants

### Bash Scripts
- **Shebang**: Use `#!/usr/bin/env bash`
- **Error handling**: Use `set -ex` for strict execution
- **Variables**: Use UPPER_SNAKE_CASE for environment variables
- **Functions**: Use snake_case with clear descriptive names
- **Permissions**: Ensure all scripts are executable (`chmod +x`)

### Git Workflow
- **Source branch**: `develop/trunk`
- **Feature branches**: `develop/<task_name>/trunk`
- **SSH key path**: `keys/id_rsa`
- **Commit messages**: AI-generated via `prompts/guide_to_write_commit_msg.md`

## Environment Variables

```bash
export NO_COLOR=1                    # Disable color output for OpenRouter
export PYTHONUNBUFFERED=1            # Immediate Python output
```

## AI Integration Guidelines

### Prompt Management
- `prompts/INIT_AGENTS.md` - Agent initialization
- `prompts/guide_to_write_commit_msg.md` - Commit message formatting
- `prompts/prompt_001.md` - Task execution prompt
- `prompts/prompt_002.md` - Correction prompt

### AI Model Configuration
- **Model**: `happy_llm/happy-think-low`
- **Timeout**: 3600 seconds per execution
- **Log files**: Stored in `.tmp/agent_run_log.log`

## Required Scripts

The system requires these scripts in `code_under_work/scripts/`:

### ai_selfcheck.sh
```bash
#!/usr/bin/env bash
echo "selfcheck passed"
```
- Validates code changes and returns exit code 0 for success

### ai_reset_env.sh
```bash
#!/usr/bin/env bash
echo "reset passed"
```
- Prepares environment for modifications

## File Naming Conventions

- **Task files**: `<task_name>.md` in `tasks/_queue/`
- **Log files**: `agent_run_log.log`, `test_before.out`, `test_after.out`
- **Branch names**: `develop/<task_name>/trunk`
- **Python files**: `snake_case.py`
- **Bash scripts**: `kebab-case.sh` or `snake_case.sh`

## Error Handling

### Python Error Patterns
- Always check subprocess return codes
- Use `check=False` when you need to handle failures manually
- Capture both stdout and stderr for debugging
- Exit with appropriate status codes

### Bash Error Patterns
- Use `set -ex` for immediate exit on errors
- Check file existence before operations
- Use conditional logic for optional operations
- Log errors to stderr for visibility

## Testing Strategy

### Before Modification
- Run `ai_selfcheck.sh` to establish baseline
- Store results in `test_before.out`
- Exit code 0 indicates healthy baseline

### After Modification
- Run `ai_selfcheck.sh` to validate changes
- Store results in `test_after.out`
- If tests fail, trigger correction loop (max 10 attempts)

### Correction Loop
- Automatic retry via `OcRunCorrection.sh`
- Each attempt gets task context + failure feedback
- Loop breaks on successful test (exit code 0)

## Logging and Monitoring

### Task Logs
- **Location**: `.AI_task_log/<task_name>/`
- **Contents**: `test_before.out`, `test_after.out`, `ai_commit_message.md`, `task.md`
- **Real-time**: Console output during execution

### Git Operations
- All operations logged with detailed output
- SSH key authentication required
- Force push protection for main branches

## Development Guidelines

### Adding New Tasks
1. Create `.md` file in `tasks/_queue/`
2. Use descriptive filename (e.g., `implement_auth.md`)
3. Include clear requirements in file content

### Script Development
- Maintain POSIX compatibility for Bash scripts
- Use proper error handling in all scripts
- Follow existing naming conventions
- Include appropriate permissions

### Testing Requirements
- All scripts must be executable
- Test with sample tasks before deployment
- Ensure backward compatibility
- Validate Git operations work correctly

## Security Considerations

- SSH keys should have 600 permissions
- Never log sensitive information
- Validate input parameters
- Use absolute paths for critical operations
- Avoid hardcoded credentials in scripts

## Performance Notes

- Tasks have 3600-second timeout
- Maximum 10 correction attempts
- Clean environment between tasks
- Parallel operations where possible
- Efficient file operations with proper cleanup

This document serves as the primary reference for AI agents working in this repository. Follow these guidelines to ensure consistent, reliable task processing.