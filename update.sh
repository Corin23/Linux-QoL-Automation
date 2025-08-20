#!/bin/bash
echo "🔄 Updating and upgrading system..."
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y
echo "✅ System updated successfully!"
