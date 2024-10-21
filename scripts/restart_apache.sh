#!/bin/bash
# Restart Apache web server

# Check if Apache is running
if systemctl is-active --quiet httpd; then
    echo "Apache is running, restarting the service."
    systemctl restart httpd
else
    echo "Apache is not running, starting the service."
    systemctl start httpd
fi
