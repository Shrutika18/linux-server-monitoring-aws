# Linux Server Monitoring and Automated Backup on AWS EC2

## 📌 Project Overview

This project demonstrates Linux server monitoring and automated backup using an Ubuntu EC2 instance on Amazon Web Services (AWS).

Bash scripts are used to monitor system resources, generate log reports, and create automated backups. Cron jobs are configured to schedule these tasks.

## 🎯 Project Objectives

- Monitor CPU, memory, and disk usage.
- Automate Linux system monitoring using Bash scripting.
- Create timestamped backup files.
- Schedule tasks using Cron jobs.
- Manage a Linux server hosted on AWS EC2.

## 🛠️ Technologies Used

- AWS EC2
- Ubuntu 24.04 LTS
- Linux
- Bash Scripting
- Cron Jobs
- Git
- GitHub
- PuTTY

## ☁️ AWS Architecture

The project uses the following architecture:

1. AWS EC2 provides the virtual Linux server.
2. Ubuntu runs on the EC2 instance.
3. Bash scripts monitor system resources.
4. Monitoring reports are stored in log files.
5. Backup scripts create compressed backup archives.
6. Cron schedules monitoring and backup tasks.

## 📂 Project Structure

```text
linux-cloud-project/
│
├── scripts/
│   ├── system_monitor.sh
│   └── backup.sh
│
├── logs/
│   └── system_monitor.log
│
├── backups/
│   └── backup_YYYYMMDD_HHMMSS.tar.gz
│
└── data/
    └── sample.txt
```

## ⚙️ Project Features

### 1. System Monitoring

- Monitors CPU usage.
- Monitors memory usage.
- Checks disk utilization.
- Displays server uptime.
- Saves monitoring reports in log files.

### 2. Automated Backup

- Creates compressed `.tar.gz` backup files.
- Uses timestamps in backup filenames.
- Stores backups in the backups directory.
- Automatically deletes backups older than 7 days.

### 3. Cron Job Scheduling

Configured scheduled tasks:

```bash
*/5 * * * * /home/ubuntu/linux-cloud-project/scripts/system_monitor.sh

0 18 * * * /home/ubuntu/linux-cloud-project/scripts/backup.sh
```

- System monitoring runs every 5 minutes.
- Backup runs daily at 6:00 PM.

## 🚀 Installation and Setup

### Step 1: Update Ubuntu

```bash
sudo apt update
sudo apt upgrade -y
```

### Step 2: Install Required Packages

```bash
sudo apt install htop zip cron git -y
```

### Step 3: Create Project Directories

```bash
mkdir -p ~/linux-cloud-project/{scripts,logs,backups,data}
```

### Step 4: Give Execute Permission

```bash
chmod +x ~/linux-cloud-project/scripts/system_monitor.sh
chmod +x ~/linux-cloud-project/scripts/backup.sh
```

### Step 5: Configure Cron Jobs

```bash
crontab -e
```

Add the monitoring and backup schedules shown above.

### Step 6: Verify Cron Jobs

```bash
crontab -l
```

## 🧪 Testing and Verification

Run the monitoring script:

```bash
~/linux-cloud-project/scripts/system_monitor.sh
```

Run the backup script:

```bash
~/linux-cloud-project/scripts/backup.sh
```

View monitoring logs:

```bash
cat ~/linux-cloud-project/logs/system_monitor.log
```

View backup files:

```bash
ls -lh ~/linux-cloud-project/backups/
```

Check server resources:

```bash
free -h
df -h
uptime
```

## 📸 Project Screenshots

### 1. Ubuntu EC2 Server

![Ubuntu EC2 Server](./screenshots/01-ubuntu-ec2-server.png)

### 2. System Monitoring

![System Monitoring](./screenshots/02-system-monitoring.png)

### 3. Automated Backup

![Automated Backup](./screenshots/03-automated-backups.png)

### 4. Cron Scheduling

![Cron Scheduling](./screenshots/04-cron-scheduling.png)

### 5. Project Structure

![Project Structure](./screenshots/05-project-structure.png)

### 6. Resource Inspection

![Resource Inspection](./screenshots/06-resource-inspection.png)

## 📚 Learning Outcomes

Through this project, I gained practical experience in:

- Linux server administration.
- AWS EC2 instance management.
- Bash scripting and automation.
- System resource monitoring.
- Automated backup management.
- Cron job scheduling.
- Git and GitHub.

## 🔮 Future Enhancements

- Email alerts for high resource utilization.
- CloudWatch monitoring integration.
- Automated backup storage using Amazon S3.
- Improved monitoring dashboards.

## 👩‍💻 Author

**Shrutika Bagal**

GitHub: https://github.com/Shrutika18

---

⭐ If you find this project useful, feel free to explore the repository!
