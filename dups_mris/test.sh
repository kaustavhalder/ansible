#!/usr/bin/bash
ansible-encrypt vars/vars.yaml
ansible-playbook --ask-pass #then the regular stuff
