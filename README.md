# -oss-audit-24MEI10049-

Course: Open Source Software (OSS NGMC)
Student: Jayanth
Registration Number: 24MEI10049
University: VIT Bhopal University
Chosen Software: Python — Open Source Programming Language
License of Chosen Software: Python Software Foundation License

About This Project

This repository contains five shell scripts created as part of the Open Source Audit project. The project focuses on analyzing Python, a widely used open-source programming language.

The goal of this project is to understand:

Open source philosophy
Linux system interaction
Software auditing techniques
Practical shell scripting
Repository Contents
File	Description
01_system_identity.sh	Script 1 — System Identity Report
02_package_inspector.sh	Script 2 — FOSS Package Inspector
03_disk_auditor.sh	Script 3 — Disk and Permission Auditor
04_log_analyzer.sh	Script 4 — Python Log File Analyzer
05_manifesto.sh	Script 5 — Open Source Manifesto Generator
README.md	Project documentation
Script Descriptions
Script 1 — System Identity Report

Displays detailed system information such as:

OS distribution
Kernel version
Current user
Home directory
System uptime
Date and time

Also includes open-source license reference (GPL).

Concepts Used:
Variables, command substitution, echo formatting

Script 2 — FOSS Package Inspector

Checks whether Python (python3) is installed on the system and displays:

Installation status
Version information
Description of Python

Includes fallback logic for python if python3 is not found.

Concepts Used:
if-else, case statement, command detection

Script 3 — Disk and Permission Auditor

Analyzes important Linux directories and shows:

Permissions
Ownership
Disk usage

Also performs Python-specific checks:

Python binary details
Python config directory
pip configuration file

Concepts Used:
arrays, for loop, df, du, ls, awk

Script 4 — Python Log File Analyzer

Reads a log file and:

Searches for a keyword (default: Traceback)
Counts matching lines
Displays last 5 matches

Handles:

Missing file
Empty file
Invalid input

Concepts Used:
while loop, grep, counters, arguments

Script 5 — Open Source Manifesto Generator

Generates a personalized open-source manifesto by:

Taking user input
Creating a timestamped file
Writing structured content

Concepts Used:
read, file handling, date, string formatting

How to Run the Scripts
Prerequisites
Linux system (Ubuntu recommended)
Bash shell
Python installed

Install Python (if not installed):

sudo apt update
sudo apt install python3
Run Scripts

Make scripts executable:

chmod +x *.sh

Run each script:

./01_system_identity.sh
./02_package_inspector.sh
./03_disk_auditor.sh
./04_log_analyzer.sh logfile.txt
./05_manifesto.sh
Learning Outcomes

Through this project, I learned:

How open-source software like Python works
Interaction between Linux and software tools
Writing structured shell scripts
Performing system-level audits
Importance of open-source collaboration
