#!/bin/bash

# This script configures Apache to allow .htaccess overrides for Laravel
# It must be run with sudo

echo "Configuring Apache..."

CONF_FILE="/etc/apache2/sites-available/000-default.conf"

if [ ! -f "$CONF_FILE" ]; then
    echo "Error: Apache configuration file not found at $CONF_FILE"
    exit 1
fi

# Backup the file
sudo cp "$CONF_FILE" "$CONF_FILE.bak"

# Check if we need to add the Directory block
if grep -q "AllowOverride All" "$CONF_FILE"; then
    echo "Configuration already allows overrides."
else
    echo "Adding Directory configuration..."
    # Insert the block after DocumentRoot
    sudo sed -i '/DocumentRoot \/var\/www\/html/a \
    \
    <Directory /var/www/html>\
        AllowOverride All\
    </Directory>' "$CONF_FILE"
fi

echo "Enabling mod_rewrite..."
sudo a2enmod rewrite

echo "Restarting Apache..."
sudo systemctl restart apache2

echo "Configuration complete! Your site should now support clean URLs."
