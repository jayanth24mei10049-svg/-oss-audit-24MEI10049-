#!/bin/bash

# ==============================================================
# Script 2: FOSS Package Inspector (Python)
# Author: Jayanth | Reg No: 24MEI10049
# ==============================================================

# Step 1: Set default package name
pkg="python3"

echo ""
echo "╔══════════════════════════════════════════════════════════╗"
echo "║          FOSS PACKAGE INSPECTOR (PYTHON)                ║"
echo "╠══════════════════════════════════════════════════════════╣"
echo "║  Student : Jayanth                                      ║"
echo "║  Reg No  : 24MEI10049                                   ║"
echo "║  Inspecting package: $pkg                               ║"
echo "╚══════════════════════════════════════════════════════════╝"
echo ""

# Step 2: Check if python3 command exists
if command -v "$pkg" >/dev/null 2>&1; then
    
    echo "✅ $pkg is installed."

    # Step 3: Get Python version
    version=$($pkg --version 2>&1)
    echo "Version: $version"

    # Step 4: Description using case
    case "$pkg" in
        python|python3)
            echo "Description: Python is a high-level, interpreted programming language used for web development, data analysis, AI, and automation."
            ;;
        *)
            echo "Description: No predefined description available."
            ;;
    esac

else
    # Fallback: check 'python'
    if command -v python >/dev/null 2>&1; then
        
        pkg="python"
        echo "✅ $pkg is installed."

        version=$(python --version 2>&1)
        echo "Version: $version"

        case "$pkg" in
            python|python3)
                echo "Description: Python is a high-level, interpreted programming language used for web development, data analysis, AI, and automation."
                ;;
            *)
                echo "Description: No predefined description available."
                ;;
        esac

    else
        echo "❌ Python is NOT installed on this system."
    fi
fi

echo ""
echo "=== Inspection Complete ==="
echo ""

# --- End of Script 2 ---