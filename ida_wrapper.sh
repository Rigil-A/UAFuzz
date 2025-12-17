#!/bin/bash
# Wine wrapper for IDA Pro 6.6 Windows binary in headless batch mode
# This script allows UAFuzz to call IDA via Wine without GUI

IDA_PATH="/home/khoile/Downloads/IDAPro6.6full/IDAPro6.6/idaq64.exe"

# Run IDA in headless batch mode:
# - Set DISPLAY='' to disable X11/GUI
# - Prepend batch options before Wine
# - Suppress Wine output (2>/dev/null optional)
export DISPLAY=""
export WINE_CPU_TOPOLOGY=2

exec wine "$IDA_PATH" "$@"
