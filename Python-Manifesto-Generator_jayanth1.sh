#!/bin/bash
# ==============================================================
# Script 5: Open Source Manifesto Generator
# Author: Jayanth | Reg No: 24MEI10049
# ==============================================================

# --- Gather user input ---
read -p "1. Name one open-source Python tool/library you use: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one Python project you would build and share: " BUILD

# --- Get date and user info ---
DATE=$(date '+%d %B %Y')
TIMESTAMP=$(date '+%Y%m%d_%H%M%S')
USERNAME=$(whoami)

# --- Output file ---
OUTPUT="manifesto_${USERNAME}_${TIMESTAMP}.txt"

echo ""
echo "╔══════════════════════════════════════════════════════════╗"
echo "║      OPEN SOURCE MANIFESTO GENERATOR (PYTHON)           ║"
echo "╠══════════════════════════════════════════════════════════╣"
echo "║  Student : Jayanth                                      ║"
echo "║  Reg No  : 24MEI10049                                   ║"
echo "╚══════════════════════════════════════════════════════════╝"
echo ""

# --- Write manifesto ---
echo "===================================================" > "$OUTPUT"
echo "        MY OPEN SOURCE MANIFESTO (PYTHON)" >> "$OUTPUT"
echo "---------------------------------------------------" >> "$OUTPUT"
echo "Student : Jayanth (24MEI10049)" >> "$OUTPUT"
echo "Generated on $DATE by $USERNAME" >> "$OUTPUT"
echo "===================================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"

# --- Paragraph 1 ---
echo "I believe in the power of open source. Every day, I rely on $TOOL — a Python-based tool that reflects collaboration and transparency. To me, freedom means $FREEDOM. It shapes how I approach programming, learning, and sharing knowledge." >> "$OUTPUT"
echo "" >> "$OUTPUT"

# --- Paragraph 2 ---
echo "If I could build one thing and share it freely, it would be $BUILD using Python. Open source helps innovation grow faster and makes knowledge accessible to everyone." >> "$OUTPUT"
echo "" >> "$OUTPUT"

# --- Paragraph 3 ---
echo "Python and open source together empower developers to solve real-world problems efficiently. I am inspired by the global open-source community and aim to contribute back." >> "$OUTPUT"
echo "" >> "$OUTPUT"

# --- Closing ---
echo "This is my manifesto. Written on $DATE." >> "$OUTPUT"
echo "Signed by Jayanth (24MEI10049)" >> "$OUTPUT"
echo "===================================================" >> "$OUTPUT"

# --- Display output ---
echo "Your manifesto has been generated successfully."
echo ""
echo "--- BEGIN MANIFESTO ---"
cat "$OUTPUT"
echo "--- END MANIFESTO ---"
echo ""
echo "Saved to: $(pwd)/$OUTPUT"
echo ""