# Complete Plugin Installation Fix Guide

## Step-by-Step Commands

Run these commands **in Claude Code's chat interface** (not terminal):

### Step 1: Remove existing marketplace (if any)
```
/plugin marketplace remove orsted-marketplace
```

### Step 2: Uninstall plugin (if it shows as installed)
```
/plugin uninstall orsted@orsted-marketplace
```

### Step 3: Restart Claude Code
- Quit Claude Code completely
- Reopen it

### Step 4: Add the marketplace
```
/plugin marketplace add nathanasimon/orsted-marketplace
```

### Step 5: Install the plugin
```
/plugin install orsted@orsted-marketplace
```

### Step 6: Verify installation
```
/plugin
```
Then check the "Installed" tab to see if `orsted` appears.

### Step 7: Test the plugin
Try running:
```
/orsted:status
```

---

## Alternative: Local Installation (If marketplace still doesn't work)

If the marketplace installation still shows "(no content)", you can use the plugin locally:

```bash
claude --plugin-dir /Users/nathansimon/orsted-marketplace-1/orsted
```

This loads the plugin directly from your local directory.
