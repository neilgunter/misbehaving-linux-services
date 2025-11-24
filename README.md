# Service Monitor Script

## Overview
Bash script for monitoring and automatically restarting system services using systemd. The script checks service status and performs restarts when necessary, with comprehensive logging.

## Prerequisites
- systemd-based Linux distribution
- Root or sudo privileges for service management
- Valid systemd service name

## Configuration
Edit these variables at the top of the script:
```bash
SERVICE="your-service-name"  # Replace with actual service name
LOGFILE="/var/log/service_monitor.log"  # Log file location
```

## Usage
```bash
chmod +x servicemonitor.sh
sudo ./servicemonitor.sh
```

## Features
- **Service Status Check**: Verifies if the specified service is active
- **Automatic Restart**: Attempts to restart services that are not running
- **Comprehensive Logging**: Timestamped logs with success/failure status
- **Error Handling**: Provides feedback on restart attempts

## Log Output
The script logs all actions with timestamps to the specified log file, including:
- Service status checks
- Restart attempts
- Success/failure notifications

## Exit Status
- **Success**: Service was running or successfully restarted
- **Failure**: Service was not running and restart failed

## Recommended Use
- Cron job for periodic service monitoring
- System startup scripts
- Automated maintenance tasks
