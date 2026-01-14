#!/bin/bash

# Orsted: Background context updater
# Runs after each Claude session to update CONTEXT.md files

sleep 1

cd "$CLAUDE_PROJECT_DIR" 2>/dev/null || exit 0

# Run update in background via headless Claude
claude -p "Check files modified recently (use git status, git diff). For each folder with changes, update or create its CONTEXT.md with:

1. **What is this folder** - purpose (if creating new)
2. **Work Log** - add dated entry: what was done and WHY (append, don't replace existing entries)
3. **What Failed** - anything that didn't work and why (CRITICAL - always include failures)
4. **Decisions** - choices made and alternatives considered
5. **Status** - 🟢 Done | 🟡 In Progress | 🔴 Blocked | ❌ Abandoned

If any critical errors were discussed (user corrected a mistake you made), add to CLAUDE.md under '## Critical Errors' section.

Be specific. Include dates. Append to Work Log, don't overwrite existing entries." \
  --allowedTools "Read,Write,Edit,Bash(git:*),Bash(date:*)" \
  > /dev/null 2>&1

# Notification when done
if [[ "$OSTYPE" == "darwin"* ]]; then
  osascript -e 'display notification "Context saved" with title "🐉 Orsted"' 2>/dev/null
elif command -v notify-send &> /dev/null; then
  notify-send "🐉 Orsted" "Context saved" 2>/dev/null
fi
