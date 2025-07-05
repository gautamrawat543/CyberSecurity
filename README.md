# 🛡️ CyberSecurity Toolkit

**CyberSecurity** is a curated collection of bash scripts, tools, and automation designed to assist with system hardening, password cracking, DevSecOps integration, and real-world security tasks.

This project includes **automated utilities**, **penetration testing scripts**, and **proof of contributions** to the cybersecurity community.

---

## 🧠 Key Features

- 🔐 **System Hardening Scripts**: Automate security configurations like firewalls, SSH rules, and service audits.
- 💣 **Password Cracking Utility**: Use brute-force or dictionary-based methods to test password strength.
- 📊 **Logging & Monitoring**: Scripts to audit logs, track failed logins, and collect system metadata.
- ⚙️ **CI/CD Security**: Scripts that can be integrated into DevSecOps pipelines.
- 📁 **Modular Design**: Easy-to-use scripts categorized for quick access.

---

## 📂 Repository Structure

| Folder | Description |
|--------|-------------|
| `BashScripts/` | All core bash scripts for various cybersecurity tasks |
| `Achievements/` | Proof of cybersecurity contribution (with certificates/images) |

---

## 🔓 Password Cracking Script

Inside `BashScripts/`, you'll find a **password cracking script** designed for educational and testing purposes:

### 🔍 Example Features:
- Dictionary-based brute-force approach
- Reads from a wordlist and hashes
- Logs attempts and successful matches

> ⚠️ **Note:** This is for **authorized ethical testing only**. Do not use without permission on any system or data you don't own or have consent for.

To run:
```bash
cd BashScripts
chmod +x password_crack.sh
./password_crack.sh
