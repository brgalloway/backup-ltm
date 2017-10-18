
# Primitive automated backup solution for BIG-IP LTM
The script is to demostrate the flexibility of the BIG-IP platform.
Showing that you can leverage the Linux Guest OS and crontab to
expand on its basic functionality. 

Setup your crontab. This one runs at 11:30PM every night
```
# vi /etc/crontab
# For help with crontab: http://crontab-generator.org/

30 23 * * * root      /home/root/automate-backup.sh
```

Generate your private and public keys. The command below is pretty useful for 
logging into to your remote host and installing the public key for you.
```
bash:~# ssh-copy-id -i /path/to/pub_key <ip_address or hostname>
```
Adding new commit message to the bottom of readme-edits 
