#!/bin/bash

BLUE='\033[0;36m'
RED='\033[0;31m'
GREEN='\033[1;32m'
NC='\033[0m'

for filename in /opt/automation_scripts/*; do
    echo -e "${GREEN}[*] Adding $filename to ~/.local/bin/ ${NC}"
    ln -s $filename ~/.local/bin/
    chmod +x $filename
done
