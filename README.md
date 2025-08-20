# 🐧 Linux QoL Scripts

A collection of **Quality of Life (QoL) scripts for Linux** that automate common maintenance tasks, improve productivity, and make your system smarter.  

Instead of manually cleaning, monitoring, or tweaking your system, these scripts handle it for you.  

---

## 📜 Included Scripts

### 🔧 System Maintenance
- **smart_cleanup.sh**  
  Cleans apt cache, old logs, and thumbnail cache. Shows large files that might be eating your storage.  

- **resource_monitor.sh**  
  Displays CPU and RAM usage. Sends desktop notifications if usage is above 90%.  

---

### 🌐 Network QoL
- **speed_logger.sh**  
  Logs your internet download speed with timestamps. Useful for detecting slow ISP performance.  

---

### 💡 Productivity Enhancements
- **clipboard_history.sh**  
  Keeps the last 10 clipboard entries so you don’t lose something you copied earlier.  

---

## ⚡ Installation & Usage

1. Clone the repo:
   ```bash
   git clone https://github.com/yourusername/linux-qol-scripts.git
   cd linux-qol-scripts
   ```

2. Make scripts executable:
   ```bash
   chmod +x *.sh
   ```

3. Run any script:
   ```bash
   ./smart_cleanup.sh
   ./resource_monitor.sh
   ./speed_logger.sh
   ./clipboard_history.sh
   ```

---

## ⏰ Automation with Cron

You can schedule scripts to run automatically using **cron**. Example: run cleanup every Sunday at 2 AM.

```bash
crontab -e
```

Add this line:
```
0 2 * * 0 /home/youruser/linux-qol-scripts/smart_cleanup.sh
```

---

## 🛠 Requirements

Some scripts may require additional tools:
- `xclip` → for clipboard history  
- `speedtest-cli` → for internet speed logging  
- `bc` & `notify-send` → for resource monitoring alerts  

Install them on Ubuntu/Debian:
```bash
sudo apt install xclip speedtest-cli bc libnotify-bin -y
```

---

## 🤝 Contributing

Got a script idea?  
Feel free to fork the repo, add your script, and open a PR!  

---

## 📜 License

MIT License – feel free to use, modify, and share.  
