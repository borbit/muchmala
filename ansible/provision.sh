#!/usr/bin/env bash
if [ "$1" == "" ]; then
    echo "Usage: $0 <environment> [playbook]"
    exit 1
fi

environment=$1
playbook="all.yml"

if [ "$2" != "" ]; then
    playbook="$2"
fi

if [ ! -f "$environment" ]; then
    echo "Environment not found: $environment"
    exit 1
fi

if [ ! -f "$playbook" ]; then
    echo "Playbook not found: $playbook"
    exit 1
fi

echo "Provisioning '$environment' with '$playbook'"
ansible-playbook -i "$environment" "$playbook"
