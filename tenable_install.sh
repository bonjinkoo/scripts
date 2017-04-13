"""
Bash - Tenable Upgrade Script
---------------------------------------------------
"""

!/bin/bash

# Asks user if he/she wants to upgrade Nessus.
read -p "Do you want to upgrade Nessus? [y,n]: " answer
if [[ $answer = y ]]; then
cd /opt
service nessusd stop
rpm -Uvh Nessus-6.9.3-es6.x86_64.rpm
else
echo "Cancelling Nessus upgrade."
fi
echo "Nessus upgrade complete. Starting Nessus."
service nessusd start


# Asks user if he/she wants to upgrade SecurityCenter.
read -p "Do you want to upgrade SecurityCenter? [y,n]: " answer
if [[ $answer = y ]]; then
cd /opt
service nessusd stop
service SecurityCenter stop
rpm -Uvh SecurityCenter-5.4.2-es6.x86_64
else
echo "Cancelling SecurityCenter upgrade."
fi
echo "SecurityCenter upgrade complete. Starting SecurityCenter."
service SecurityCenter start



"""
Installation Commands

# Asks user if he/she wants to install Nessus.
rpm -ivh Nessus-6.2.1-es6.x86_64.rpm

# Asks user if he/she wants to install SecurityCenter.
rpm -ivh SecurityCenter-5.4.2-es6.x86_64.rpm

"""

