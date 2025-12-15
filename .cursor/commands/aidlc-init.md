# /aidlc-init - Initialize AIDLC Project

Initialize AIDLC project structure in the current workspace.

## What This Command Does

1. **Check Existing State**
   - If AIDLC already initialized → Prompt to use `/aidlc` or `--force`

2. **Detect Project Type**
   - Scan for source code files (.ts, .js, .py, .java, etc.)
   - Check for build files (package.json, pom.xml, etc.)
   - Determine: **Greenfield** or **Brownfield**

3. **Create Directory Structure**
   ```
   aidlc-docs/
   ├── inception/
   │   ├── plans/
   │   ├── requirements/
   │   ├── user-stories/
   │   ├── reverse-engineering/
   │   └── application-design/
   ├── construction/
   │   ├── plans/
   │   └── build-and-test/
   ├── operations/
   ├── aidlc-state.md
   └── audit.md
   ```

4. **Create Initial Files**
   - `aidlc-state.md` - State tracking
   - `audit.md` - Audit trail

## Usage

```
/aidlc-init
```

With force reinitialize:
```
/aidlc-init --force
```

## Success Output

```markdown
✅ AIDLC Initialized Successfully

**Project Type**: Greenfield/Brownfield
**Location**: aidlc-docs/

Next: Use `/aidlc` to start the workflow
```

## Related Commands

- `/aidlc` - Start/resume workflow
- `/aidlc-status` - View current status

