#!/bin/bash
# Real-time Resource Monitor with optional alerts

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
RAM=$(free -m | awk 'NR==2{printf "%.2f", $3*100/$2 }')

echo "CPU Usage: $CPU%"
echo "RAM Usage: $RAM%"

# Alert if CPU or RAM usage > 90%
if (( $(echo "$CPU > 90" | bc -l) )); then
  notify-send "Warning" "CPU usage is above 90% ($CPU%)"
fi

if (( $(echo "$RAM > 90" | bc -l) )); then
  notify-send "Warning" "RAM usage is above 90% ($RAM%)"
fi

