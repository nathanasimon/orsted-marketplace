#!/bin/bash
# Run Claude Code with Orsted plugin loaded locally

cd "$(dirname "$0")"
claude --plugin-dir ./orsted "$@"
