#!/bin/bash
# Smart Disk Cleaner
# Cleans temp, cache, and old logs intelligently

echo "Starting Smart Cleanup..."

# Clean apt cache
sudo apt-get clean
sudo apt-get autoremove -y

# Clean thumbnail cache older than 30 days
find ~/.cache/thumbnails/ -type f -mtime +30 -delete

# Clean system log files older than 7 days
sudo find /var/log -type f -name "*.log" -mtime +7 -exec truncate -s 0 {} \;

# Optional: find large files (>100MB) in home directory
echo "Large files in home directory (>100MB):"
find ~ -type f -size +100M -exec ls -lh {} \;

echo "Smart Cleanup Completed!"
