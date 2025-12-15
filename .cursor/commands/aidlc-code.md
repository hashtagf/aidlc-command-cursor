# /aidlc-code - Code Generation

Generate code for a unit of work.

## What This Command Does

1. **Load Design Context**
   - Component definitions
   - Functional design
   - NFR patterns
   - User stories

2. **Create Code Plan**
   - Directory structure
   - Files to generate
   - Test files

3. **Generate Code**
   - Implementation files
   - Type definitions
   - Utility functions
   - Unit tests

4. **Update CHANGELOG**
   - Add entries under `[Unreleased]`
   - Link to related user stories

## Usage

For current unit:
```
/aidlc-code
```

For specific unit:
```
/aidlc-code unit-2-main-commands
```

## Code Plan Format

```markdown
# Code Generation Plan: {Unit Name}

## Generation Steps

### Step 1: Create Base Structure
- [ ] Create directory structure
- [ ] Create configuration files

### Step 2: Generate Core Components
- [ ] Component A
- [ ] Component B

### Step 3: Generate Tests
- [ ] Unit tests
- [ ] Integration tests

Ready to execute? [Approve / Request Changes]
```

## Quality Standards

- Follow project coding standards
- Include appropriate comments
- Handle errors gracefully
- Follow DRY principle

## After Each Unit

- If more units → Ask to proceed with next
- If all units done → Proceed to Build and Test

## Related Commands

- `/aidlc-build` - Build and test
- `/aidlc-status` - View progress

