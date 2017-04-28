# This is for the user_alert.conf /config/user_alert.conf
# user_alert.conf is set to fire on a specific string in /var/log/ltm
alert BACKUP_COMPLETED "Daily UCS backup complete" {
email toaddress="demo@askf5.com"
fromaddress="root"
body="The test of this Solution worked!"
}

# Setup your crontab This one runs at 11:30PM every night
# vi /etc/crontab
# For help with crontab: http://crontab-generator.org/
30 23 * * * root      /home/root/automate-backup.sh


# Generate your private and public keys
# This command is pretty useful for logging into to your remote host
# and installing the public key for it.
ssh-copy-id -i /path/to/pub_key <ip_address or hostname>

