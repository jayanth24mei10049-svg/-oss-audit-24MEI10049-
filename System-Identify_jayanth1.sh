#!/bin/bash
# ==============================================================
# Script 1: System Identity Report
# Author: Jayanth | Reg No: 24MEI10049
# ==============================================================

# Setting up project-specific identifiers 
NAME="Jayanth"
REG_NO="24MEI10049"
SOFTWARE_CHOICE="Python"

# Gathering system data
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date '+%A, %d %B %Y')
CURRENT_TIME=$(date '+%I:%M:%S %p')

# Extract distribution name
DISTRO_NAME=$(grep -w "PRETTY_NAME" /etc/os-release | cut -d'"' -f2)

# --- Display the system identity report ---
echo ""
echo "╔══════════════════════════════════════════════════════════╗"
echo "║           OPEN SOURCE AUDIT — SYSTEM IDENTITY           ║"
echo "╠══════════════════════════════════════════════════════════╣"
echo "║  Student    : $NAME"
echo "║  Reg No     : $REG_NO"
echo "║  Software   : $SOFTWARE_CHOICE"
echo "╠══════════════════════════════════════════════════════════╣"
echo "║  Distribution : $DISTRO_NAME"
echo "║  Kernel       : $KERNEL"
echo "║  User         : $USER_NAME"
echo "║  Home Dir     : $HOME_DIR"
echo "║  Uptime       : $UPTIME"
echo "║  Date         : $CURRENT_DATE"
echo "║  Time         : $CURRENT_TIME"
echo "╠══════════════════════════════════════════════════════════╣"
echo "║  OS License   : GNU General Public License v2 (GPLv2)   ║"
echo "╚══════════════════════════════════════════════════════════╝"
echo ""

# --- End of Script 1 ---