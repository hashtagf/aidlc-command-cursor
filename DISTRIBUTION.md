# 📦 AIDLC Distribution Guide

คู่มือสำหรับการแจกจ่าย AIDLC Command System ให้ทีม

---

## 🎯 วิธีเตรียมสำหรับแจกจ่าย

### Quick Way: ใช้ Script ✨

```bash
# เตรียมสำหรับแจกจ่าย (ลบ artifacts อัตโนมัติ)
./scripts/prepare-distribution.sh
```

### Manual Way

#### Step 1: ลบ Generated Artifacts

```bash
# ลบ aidlc-docs/ (เป็น artifacts จากการทดสอบ)
rm -rf aidlc-docs/
```

#### Step 2: เลือกวิธีแจกจ่าย

#### Option A: Git Repository (แนะนำ)

```bash
# Push ไปที่ Git repo (GitHub, GitLab, Bitbucket)
git init
git add .
git commit -m "Initial AIDLC Command System"
git push origin main

# ทีมสามารถ clone หรือ fork ได้
```

#### Option B: ZIP File

```bash
# สร้าง ZIP file
cd ..
zip -r aidlc-command-cursor.zip aidlc-command-cursor/ \
  -x "*.DS_Store" \
  -x "*aidlc-docs/*" \
  -x "*.git/*"
```

#### Option C: Copy โดยตรง

```bash
# Copy ไปยัง project ของทีม
cp -r .cursor/ /path/to/team-project/.cursor/
```

---

## 📋 Checklist ก่อนแจกจ่าย

- [ ] ลบ `aidlc-docs/` folder แล้ว
- [ ] ตรวจสอบ README.md อ่านเข้าใจ
- [ ] ทดสอบ commands ใน Cursor IDE
- [ ] (Optional) Customize rules ตามทีม

---

## 📁 Files ที่ต้องแจกจ่าย

```
✅ MUST Include:
├── .cursor/
│   ├── commands/     # 14 command files + README
│   └── rules/        # AIDLC rule definitions
└── README.md         # Usage documentation

❌ DO NOT Include:
├── aidlc-docs/       # Generated artifacts (delete before sharing)
└── .git/             # Git history (optional to exclude)
```

---

## 👥 Instructions สำหรับทีม

### สิ่งที่ต้องบอกทีม:

1. **วิธี Install**
   ```bash
   # Clone repo
   git clone <repo-url>
   
   # Copy .cursor/ ไปยัง project
   cp -r aidlc-command-cursor/.cursor/ my-project/.cursor/
   ```

2. **ต้อง Restart Cursor IDE** หลัง copy files

3. **เปิด Chat แล้วพิมพ์ `/aidlc`** เพื่อเริ่มต้น

4. **อย่าลืม commit `aidlc-docs/`** ใน project จริงเพื่อให้ทีมเห็นร่วมกัน

---

## ⚙️ Customization สำหรับทีม

### ปรับ Rules ตาม Tech Stack

แก้ไขไฟล์ใน `.cursor/rules/aidlc-rules/aws-aidlc-rule-details/`:

```
common/
├── terminology.md       # ศัพท์เฉพาะของทีม
├── depth-levels.md      # ปรับ depth ตามความซับซ้อน

construction/
├── code-generation.md   # ปรับ templates ตาม tech stack
└── nfr-requirements.md  # ปรับ NFR standards ตามองค์กร
```

### เพิ่ม Custom Commands

สร้างไฟล์ใหม่ใน `.cursor/commands/`:

```markdown
# /my-custom-command

Description of what this command does.

## What It Does
...

## Related Commands
- /aidlc
```

---

## 🔄 Version Control

### Semantic Versioning

| Type | When | Example |
|------|------|---------|
| Major (X.0.0) | Breaking changes | New workflow structure |
| Minor (1.X.0) | New features | New commands added |
| Patch (1.0.X) | Bug fixes | Typo fixes, minor improvements |

### Changelog

Keep a changelog when updating:

```markdown
## [1.1.0] - 2025-12-16
### Added
- New /aidlc-custom command
### Changed
- Updated code-generation rules
```

---

## ❓ FAQ

### Q: ทีมใช้ Global หรือ Per-Project?

**Per-Project (แนะนำ)**:
- ✅ ทุกคนในทีมได้ version เดียวกัน
- ✅ Update ผ่าน Git ได้
- ✅ Customize ตาม project ได้

**Global**:
- ✅ ติดตั้งครั้งเดียวใช้ได้ทุก project
- ❌ Update ยากกว่า
- ❌ ทีมอาจมี version ต่างกัน

### Q: มี Conflict กับ Commands อื่น?

Commands ใช้ prefix `/aidlc-` ทำให้ไม่ conflict กับ commands อื่น

### Q: รองรับ AI Model ไหนบ้าง?

ทำงานได้กับทุก AI model ที่ Cursor รองรับ:
- Claude (แนะนำ)
- GPT-4
- Other models

---

## 📞 Support

หากมีปัญหาหรือข้อเสนอแนะ:
1. สร้าง Issue ใน Git repo
2. หรือติดต่อผู้ดูแล AIDLC

---

**Happy Coding with AIDLC! 🚀**

