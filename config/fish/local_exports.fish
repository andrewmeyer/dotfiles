#This file will be sourced and set localized exports
set LD_LIBRARY_PATH /usr/local/pulse:$LD_LIBRARY_PATH:/usr/lib/x86_64-linux-gnu/gtk-2.0/modules/
set MSF_DATABASE_CONFIG /opt/metasploit-framework/config/database.yml
set -x ENCFS6_CONFIG '/home/ameyer/.encfs6.xml'
set -x ANSIBLE_VAULT_PASSWORD_FILE ~/.vault_pass.conf
set -x ANSIBLE_CONFIG ~/code/ansible/ansible1-ord6/ansible.cfg
set -x ANSIBLE_INVENTORY ~/ansible1-ord6/hosts
set -x ANSIBLE_ROLES_PATH ~/ansible-roles/roles
set -x REDPEN_HOME /home/ameyer/redpen-distribution-1.10.2-SNAPSHOT
