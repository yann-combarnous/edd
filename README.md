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

Known issues:
=============
- Todo: Add Privacy Badger extension through ExtensionInstallForcelist policy
- Todo: Add Chrome Remote Desktop extension through ExtensionInstallForcelist policy
- Todo: Roles cleanup and documentation
- Todo: Create logs for ansible-user script
- Todo: Send ansible-user and ansible-system logs to loggly
- Bug: Chromium bug 173640: unable to set "Allow in incognito" permission for ExtensionInstallForcelist extensions, being worked on by Google devs