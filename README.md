# JavaScript Hello World

A simple and clean JavaScript "Hello World" project that serves as an excellent starting point for learning JavaScript development.

## 🚀 Quick Start

```bash
# Clone and install dependencies
git clone <repository-url>
cd github_js_helloworld
npm install

# Run the application
node index.js
```

## 📝 Description

This is a minimal Node.js project that demonstrates the classic "Hello World" example in JavaScript. It's perfect for:
- Learning JavaScript basics
- Testing development environments
- Starting new projects
- Understanding Node.js fundamentals

## 🛠️ Installation

Choose your preferred package manager:

### Using npm
```bash
npm install
```

### Using pnpm
```bash
pnpm install
```

## 🏃‍♂️ Usage

Run the main script to see the output:

```bash
node index.js
```

**Expected output:**
```
helloworld
```

## 📜 Available Scripts

- `npm test` - Run tests (placeholder - no tests currently configured)
- `npm run ai_selfcheck` - Execute the application and run a self-check
- `npm run ai_mobile_build_test` - Build mobile components (if available)

## 📦 Dependencies

- **axios** (v1.13.2) - Promise based HTTP client for making requests

## 📁 Project Structure

```
github_js_helloworld/
├── index.js              # Main application entry point
├── package.json          # Project configuration and metadata
├── package-lock.json     # npm lock file (auto-generated)
├── pnpm-lock.yaml        # pnpm lock file (auto-generated)
├── .gitignore           # Git ignore rules
├── scripts/             # Utility scripts
│   ├── ai_selfcheck.sh  # Self-check script
│   └── ai_reset_env.sh  # Environment reset script
├── .tmp/                # Temporary files directory
└── README.md            # This file
```

## 🔧 Development Scripts

### Self-Check
```bash
npm run ai_selfcheck
```
This script runs the main application and outputs "done" when complete.

### Environment Reset
```bash
# Manual execution
./scripts/ai_reset_env.sh
```
This script reinstalls all dependencies and outputs "done" when complete.

## 🎯 Learning Objectives

This project helps you understand:
- Basic JavaScript syntax
- Node.js runtime execution
- Package management with npm/pnpm
- Project structure and organization
- Git version control fundamentals

## 📄 License

ISC License - Feel free to use this code for learning and development purposes.

---

*Happy coding! 🎉*