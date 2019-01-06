# edd
Introduction
============
This repository contains Ansible playbooks to configure desktop workstations that have Linuxmint 19.1 installed. We use Ansible-pull, as workstations are not always turned on and we do not have servers atm on our network.  

Pre-requisites
==============
- Linuxmint installed
- hostname properly set according to naming convention
- a user called "edd" created as part of the installation process
- network needs to be available or wifi needs to be setup as scripts will call github to pull scripts
- hardware drivers installed / updated through mint welcome screen

Usage
=====
The provision.sh script will setup every required software, policies, cron jobs and updates on each workstation. 

It needs to be run on each workstation after the initial installation, from an "edd" user session and bash terminal window, by calling:

```
curl https://raw.githubusercontent.com/xunilog/edd/master/provision.sh | bash
```

The script will prompt for "edd" user password twice to run some commands as sudo. 

Then subscribe the machine to Loggly so ansible run results get published online:

```
curl -O https://www.loggly.com/install/configure-file-monitoring.sh
sudo bash configure-file-monitoring.sh -a eddbxl -t 9f567eb4-7e5c-4eb5-af44-a91ca9853dae -u edd -f /var/log/ansible-pull.log -l ansible-pull
```

The user password prompted should be the same as "edd" user.

Known issues:
=============
- Todo: Create logs for ansible-user script
- Bug: Chromium bug 173640: unable to set "Allow in incognito" permission for ExtensionInstallForcelist extensions, being worked on by Google devs (see https://bugs.chromium.org/p/chromium/issues/detail?id=173640). As a workaround, on invite account, use: 
```
chmod 000 /etc/opt/chrome/policies/managed/invite-policy.json
```
Then open chrome and got to chrome://extensions, open details for Privacy Badger extension, and activate in incognito mode. Then run:
```
chmod 400 /etc/opt/chrome/policies/managed/invite-policy.json
```
