# Local Installation Guide

Since the marketplace installation shows "(no content)", use local installation instead.

## Quick Start

Run Claude Code with the Orsted plugin loaded:

```bash
cd /Users/nathansimon/orsted-marketplace-1
claude --plugin-dir ./orsted
```

Or use the helper script:

```bash
./run_orsted.sh
```

## What This Does

- Loads the Orsted plugin directly from your local directory
- Bypasses the marketplace system entirely
- All plugin features work: hooks, commands, scripts

## Available Commands

Once Claude Code starts with the plugin loaded:

- `/orsted:status` - Show Orsted status and information
- Hooks will automatically run (PreToolUse and Stop hooks)

## Make It Permanent

To always use Orsted, you can:

1. Create an alias in your `~/.zshrc` or `~/.bashrc`:
   ```bash
   alias claude-orsted='claude --plugin-dir /Users/nathansimon/orsted-marketplace-1/orsted'
   ```

2. Then just run:
   ```bash
   claude-orsted
   ```

Or create a symlink/script in your PATH that points to the run_orsted.sh script.
