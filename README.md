# AIDLC Command System for Cursor

<div align="center">

**ระบบ Custom Commands สำหรับ Cursor IDE**  
**ใช้หลักการ AI Development Life Cycle (AIDLC)**

[![Cursor](https://img.shields.io/badge/Cursor-IDE-blue)](https://cursor.com)
[![Commands](https://img.shields.io/badge/Commands-14-green)](.cursor/commands/)

</div>

---

## 🎯 What is AIDLC?

**AI Development Life Cycle (AIDLC)** คือ framework สำหรับพัฒนาซอฟต์แวร์โดยใช้ AI เป็นผู้ช่วย ครอบคลุม 3 phases:

| Phase | Focus | Description |
|-------|-------|-------------|
| 🔵 **INCEPTION** | WHAT | วิเคราะห์ความต้องการ + ออกแบบ |
| 🟢 **CONSTRUCTION** | HOW | Functional design + Code generation |
| 🟡 **OPERATIONS** | RUN | Deploy + Monitor (future) |

---

## 🚀 Quick Start

### 1. Copy Commands

```bash
# ใช้เฉพาะ project นี้
# Commands อยู่ที่ .cursor/commands/ แล้ว

# หรือใช้ได้ทุก project (Global)
cp -r .cursor/commands/* ~/.cursor/commands/
```

### 2. เปิด Cursor Chat

กด `Cmd+L` (Mac) หรือ `Ctrl+L` (Windows)

### 3. เริ่มใช้งาน

```
/aidlc
```

---

## 📋 Commands

### Main Commands

```
/aidlc              # เริ่มหรือ resume workflow
/aidlc-init         # Initialize project structure
/aidlc-status       # แสดงสถานะปัจจุบัน
```

### INCEPTION Commands

```
/aidlc-reverse      # Reverse engineering (brownfield)
/aidlc-requirements # วิเคราะห์ความต้องการ
/aidlc-stories      # สร้าง user stories
/aidlc-plan         # วางแผน workflow
/aidlc-design       # ออกแบบ application
/aidlc-units        # แบ่ง units of work
```

### CONSTRUCTION Commands

```
/aidlc-functional   # Functional design
/aidlc-nfr          # NFR requirements & design
/aidlc-infra        # Infrastructure design
/aidlc-code         # Code generation
/aidlc-build        # Build & test instructions
```

---

## 📁 Project Structure

```
.
├── .cursor/
│   ├── commands/              # 📌 AIDLC Custom Commands
│   │   ├── aidlc.md
│   │   ├── aidlc-init.md
│   │   ├── aidlc-status.md
│   │   └── ... (14 files)
│   └── rules/
│       └── aidlc-rules/       # AIDLC Reference Rules
├── aidlc-docs/                # Generated AIDLC artifacts
│   ├── inception/
│   ├── construction/
│   ├── aidlc-state.md
│   └── audit.md
└── README.md
```

---

## 💡 Usage Examples

### New Project

```
/aidlc
```

AI จะตรวจจับว่าเป็น Greenfield และเริ่ม workflow

### With Context

```
/aidlc-requirements Build a REST API for user management with JWT auth
```

### Check Progress

```
/aidlc-status
```

---

## 🔗 Links

- 📖 [Cursor Commands Docs](https://cursor.com/docs/agent/chat/commands)
- 📂 [Commands README](.cursor/commands/README.md)
- 📋 [Build Instructions](aidlc-docs/construction/build-and-test/build-instructions.md)

---

## 📝 License

MIT

---

<div align="center">

**Made with ❤️ using AIDLC**

</div>

