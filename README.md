# AWS Cloud SIEM homelab Cloud based Security 

Information and Event Management (SIEM) deployment using Wazuh on AWS EC2 for secruity monitoring and threat detection 

##  Overview 

This project showcases the configuration and deployment of a production-ready SIEM system in AWS. The mini implementation includes multi-endpoint monitoring, a custom detection rule devlopment, and real-time event analysis


# Architecture 

- **SIEM Platform** — Wazuh 4.7.5 (Manger, Indexer, Dashboard)
- **Cloud Infrastructure** — AWS EC2 (Ubuntu 22.04 LTS, t3.small)
- **Monitored Endpoints**
    - AWS (Ubuntu 22.04) — Self-monitoring enabled 
    -  macOS agent — Remote endpoint monitoring 
- **Detection Framework** — MITRE ATT&CK


## Use Case Implementations

### 1. SSH Brute Force 
- Generated 15+ failed authentication attempts to simulate attack
- Analyzed built-in Wazuh detection rules (5710, 5716, 5720, 5551)
- Created custom correlation rule (ID: 100010) mapped to MITRE ATT&CK T1110
- Discovered comprehensive built-in detection capabilities, demonstrating importance of understanding platform features before creating custom rules

### 2. File Integrity Monitoring (FIM)
- Configured real-time monitoring on critical directories
- Monitored: `/root/critical-files` (database configs), `/opt/sensitive-data` (API keys)
- Tested detection of file creation, modification, deletion, and permission changes
- All unauthorized changes detected within seconds with detailed before/after states

