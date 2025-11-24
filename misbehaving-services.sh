#!/bin/bash
# Variables

SERVICE="your-service-name"  # Replace with the actual service name
LOGFILE="/var/log/service_monitor.log"  # Log file to track restarts

# Function to log actions with timestamps
log_action() {
    echo "$(date +'%Y-%m-%d %H:%M:%S') - $1" | tee -a "$LOGFILE"
}

# Check if the service is running
if systemctl is-active --quiet "$SERVICE"; then
    log_action "Service '$SERVICE' is running."
else
    log_action "Service '$SERVICE' is not running. Attempting to restart."
    
    # Attempt to restart the service
    systemctl restart "$SERVICE"
    
    # Check if the restart was successful
    if systemctl is-active --quiet "$SERVICE"; then
        log_action "Service '$SERVICE' restarted successfully."
    else
        log_action "Failed to restart the service '$SERVICE'."
    fi
fi
