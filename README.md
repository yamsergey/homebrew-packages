# Homebrew Tap for Development Tools

This is a Homebrew tap for installing Development Tools for Android (DTA).

## Installation

```bash
brew tap yamsergey/packages
brew install dta-cli
```

## Available Formulae

| Formula | Description |
|---------|-------------|
| **dta-cli** | CLI for Android project analysis, workspace generation, and device inspection |
| **adt-cli** | Legacy name for dta-cli (for backward compatibility) |

## Usage

After installation, you can use `dta-cli`:

```bash
# Generate workspace.json for Kotlin LSP
dta-cli workspace /path/to/android/project --output workspace.json

# Analyze project structure
dta-cli resolve /path/to/android/project --workspace

# Inspect device UI hierarchy
dta-cli inspect layout --format json

# Capture device screenshot
dta-cli inspect screenshot -o screen.png

# Start MCP server for AI assistants
dta-cli mcp --project /path/to/android/project

# Start web inspector
dta-cli inspector
```

## Requirements

- Java 21 or higher
- Gradle 8.0+ (for analyzed projects)
- ADB (for device inspection commands)

## Updating

```bash
brew update
brew upgrade dta-cli
```
