#!/bin/bash
echo "🧹 Cleaning system logs and cache..."
sudo apt autoremove -y
sudo apt clean
sudo journalctl --vacuum-time=7d
echo "✅ Cleanup done!"

