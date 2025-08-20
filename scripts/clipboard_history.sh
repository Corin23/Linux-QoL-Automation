#!/bin/bash
# Keeps last 10 clipboard entries
HISTORY_FILE=~/.clipboard_history

# Install xclip if not installed
if ! command -v xclip &> /dev/null
then
    sudo apt install xclip -y
fi

CLIP=$(xclip -o -selection clipboard)

# Add to history if new
if ! grep -Fxq "$CLIP" "$HISTORY_FILE"; then
    echo "$CLIP" >> "$HISTORY_FILE"
    # Keep only last 10 entries
    tail -n 10 "$HISTORY_FILE" > "${HISTORY_FILE}.tmp" && mv "${HISTORY_FILE}.tmp" "$HISTORY_FILE"
fi

echo "Clipboard history updated."

