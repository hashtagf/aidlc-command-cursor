# /aidlc - Main Entry Command

Main entry point for AIDLC (AI Development Life Cycle) workflow.

## What This Command Does

When you use this command, the AI will:

1. **Detect Workspace State**
   - Check for existing `aidlc-docs/aidlc-state.md`
   - Scan for existing source code
   - Determine if Greenfield (new) or Brownfield (existing code)

2. **For New Projects**
   - Create `aidlc-docs/` folder structure
   - Initialize `aidlc-state.md` and `audit.md`
   - Proceed to Requirements Analysis

3. **For Resume**
   - Load existing state
   - Continue from last stage
   - Show current progress

## AIDLC Workflow Overview

```
🔵 INCEPTION PHASE
├── Workspace Detection → Requirements → Stories → Planning → Design → Units

🟢 CONSTRUCTION PHASE  
├── Functional Design → NFR → Infrastructure → Code Generation → Build & Test

🟡 OPERATIONS PHASE
└── (Placeholder for future)
```

## Related Commands

- `/aidlc-init` - Initialize project only
- `/aidlc-status` - View current status
- `/aidlc-requirements` - Start requirements analysis

## Audit Logging

All interactions are logged to `aidlc-docs/audit.md` with:
- Timestamps (ISO 8601 format)
- Complete user inputs (never summarized)
- AI actions and decisions
- Stage transitions

