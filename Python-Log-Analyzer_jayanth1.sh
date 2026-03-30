#!/bin/bash

# ==============================================================
# Script 4: Python Log File Analyzer
# Author: Jayanth | Reg No: 24MEI10049
# ==============================================================

# --- Get input from user ---
LOGFILE="$1"
KEYWORD="${2:-Traceback}"

# --- Initialize counters ---
MATCH_COUNT=0
LINE_COUNT=0

# --- Check if input file is provided ---
if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 <logfile> [keyword]"
    exit 1
fi

# --- Check if file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found!"
    exit 1
fi

# --- Check if file is empty ---
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: File is empty!"
    exit 0
fi

echo ""
echo "╔══════════════════════════════════════════════════════════╗"
echo "║          PYTHON LOG FILE ANALYZER                       ║"
echo "╠══════════════════════════════════════════════════════════╣"
echo "║  Student : Jayanth                                      ║"
echo "║  Reg No  : 24MEI10049                                   ║"
echo "╚══════════════════════════════════════════════════════════╝"
echo ""

echo "File    : $LOGFILE"
echo "Keyword : $KEYWORD"
echo ""

# --- Read file line by line ---
while IFS= read -r LINE
do
    LINE_COUNT=$((LINE_COUNT + 1))

    if echo "$LINE" | grep -iq "$KEYWORD"; then
        MATCH_COUNT=$((MATCH_COUNT + 1))
    fi

done < "$LOGFILE"

# --- Display summary ---
echo "========== Summary =========="
echo "Total lines   : $LINE_COUNT"
echo "Matches found : $MATCH_COUNT"
echo ""

# --- Show last 5 matching lines ---
echo "=== Last 5 Matches ==="
grep -in "$KEYWORD" "$LOGFILE" | tail -5

echo ""
echo "======= Completed ======="
echo ""