#!/bin/bash

terraform apply --auto-approve

sleep 120

export ANSIBLE_HOST_KEY_CHECKING=false

ansible-playbook -i /usr/local/bin/terraform.py deploy/install-bastion-hosts.yml && sleep 120 &&  \
ansible-playbook -i /usr/local/bin/terraform.py deploy/install-postgres-core.yml 

