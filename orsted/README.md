# 🐉 Orsted

**CLAUDE.md that learns from every session.**

Orsted automatically keeps a full record of everything Claude does — what was done, why, what failed, what decisions were made. Every session makes Claude smarter.

## What It Does

- **Records everything** — work log with dates and reasoning
- **Learns from mistakes** — critical errors get logged, never repeated
- **Zero slowdown** — updates happen in background after you've moved on

## What You See

```
You: Fix the bug in audio_clipper/

🐉 Loading context...              ← Claude reading CONTEXT.md

[Claude does work, shows response]

🐉 Learning...                     ← fires immediately, background

You: [can type next prompt immediately]

[Desktop notification: "🐉 Orsted - Context saved"]
```

## Install

### Option 1: Local install (testing)

```bash
git clone https://github.com/yourusername/orsted.git
claude --plugin-dir ./orsted
```

### Option 2: From marketplace (once published)

```bash
/plugin install orsted@marketplace-name
```

## File Structure (auto-created)

```
project/
├── CLAUDE.md              ← project memory + critical errors
├── src/
│   └── CONTEXT.md         ← auto-created work log
└── experiments/
    └── CONTEXT.md         ← auto-created work log
```

## CONTEXT.md Format

Each folder gets a CONTEXT.md with:

```markdown
### What is this folder
Audio processing utilities

### Status
🟡 In Progress

### Work Log
- 2025-01-14: Created normalization pipeline — needed consistent volume
- 2025-01-14: Switched from librosa to scipy — dependency issues
- 2025-01-15: Added batch processing — single file too slow

### What Failed
- ❌ Cross-correlation on raw audio — too noisy, use bandpass first

### Decisions
| Decision | Why | Alternatives Rejected |
|----------|-----|----------------------|
| scipy over librosa | Fewer dependencies | librosa had install issues |

### Open Questions
- [ ] Try DTW for short templates?
```

## CLAUDE.md Template

Add this to your project's CLAUDE.md:

```markdown
# CLAUDE.md

## Project
[What this project is]

## Critical Errors
- ❌ [Error] — [What to do instead]
```

## Why "Orsted"

Named after the Dragon God from Mushoku Tensei — cursed to loop through time, accumulating knowledge each cycle until he knows everything.

Each session is a loop. Knowledge accumulates. Your agent gets smarter.

## License

MIT
