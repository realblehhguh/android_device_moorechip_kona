#!/system/bin/sh

# Monitor and prevent Keystore2 bootloop
LOGFILE=/tmp/keystore_monitor.log
MAX_RESTARTS=3
RESTART_COUNT=0

log_msg() {
    echo "$(date): $1" >> $LOGFILE
}

monitor_keystore() {
    while true; do
        if pgrep keystore2 > /dev/null; then
            # Check if keystore2 is in a restart loop
            if [ $RESTART_COUNT -ge $MAX_RESTARTS ]; then
                log_msg "Keystore2 restart limit reached, disabling service"
                setprop ctl.stop keystore2
                setprop vendor.keystore.disable 1
                break
            fi
            
            # Monitor for crashes
            sleep 5
            if ! pgrep keystore2 > /dev/null; then
                RESTART_COUNT=$((RESTART_COUNT + 1))
                log_msg "Keystore2 restart detected ($RESTART_COUNT/$MAX_RESTARTS)"
            fi
        fi
        sleep 2
    done
}

# Start monitoring in background
monitor_keystore &
