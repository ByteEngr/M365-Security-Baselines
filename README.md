# M365-Security-Baselines
Security templates, baselines, and configurations for Microsoft 365 + Defender suite.
# Microsoft 365 Security Baselines

Enterprise-ready security configurations, templates, and automation scripts for strengthening Microsoft 365 environments.  
This repository provides hardening baselines across Defender, Conditional Access, Zero Trust, and email security.

---

## Included in this Toolkit

### 1. Microsoft Defender for Endpoint
- ASR baseline rules
- Device control templates
- Attack surface reduction scripts
- MDE configuration export

### 2. Conditional Access Baselines
- MFA enforcement
- Block legacy authentication
- Zero Trust administrator protections
- Export & deploy CA policies (PowerShell)

### 3. Email Security (SPF, DKIM, DMARC)
- SPF best-practice templates  
- Strict DMARC policies  
- DKIM setup documentation  
- Domain security analyzer script  

### 4. Zero Trust Principles
- Zero Trust architecture diagram  
- Security assessment scanner  
- Identity, device, and network controls  

### 5. Endpoint Protection Hardening
- Disable weak protocols (SMBv1, TLS 1.0/1.1)  
- Enterprise hardening scripts  
- CIS-aligned JSON templates  

---

## 📂 Repository Structure

Microsoft-365-Security-Baselines

│
├── README.md
│
├── Defender
│   ├── MDE-DeviceControl-Policy.json
│   ├── MDE-AttackSurfaceReduction.json
│   ├── Enable-ASR-Rules.ps1
│   ├── Export-MDE-Config.ps1
│
├── ConditionalAccess
│   ├── CA-Baseline-MFA.json
│   ├── CA-Baseline-Block-LegacyAuth.json
│   ├── CA-ZeroTrust-Admin.json
│   ├── Deploy-CA-Policy.ps1
│   ├── Export-CA-Policies.ps1
│
├── EmailSecurity
│   ├── SPF-Template.txt
│   ├── DKIM-Setup-Guide.md
│   ├── DMARC-Policy-Strict.txt
│   ├── Generate-DomainProtectionReport.ps1
│
├── EndpointHardening
│   ├── CIS-Windows10-Baseline.json
│   ├── Harden-Windows.ps1
│   ├── Disable-Weak-Protocols.ps1
│
├── ZeroTrust
│   ├── ZeroTrust-Architecture.png
│   ├── ZeroTrust-Principles.md
│   ├── ZeroTrust-Assessment.ps1
