#!/usr/bin/bash
ansible-encrypt vars/vars.yaml
ansible-playbook --ask-vault-pass #then the regular stuff
ansible-playbook --vault-password-file #then the regular stuff
