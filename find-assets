#!/bin/bash

#A simple script
#@Author: DS & RB
#@version 0.1


BLUE='\033[1;36m'
RED='\033[1;31m'
GREEN='\033[1;32m'
NC='\033[0m'

#set -e
#set -o pipefail

path="."  # Default value

extensions=(
    ".key"
    ".pem"
    ".pki"
    ".crt"
    ".cer"
    ".cert"
    ".der"
    ".p7b"
    ".p7c"
    ".pub"
    ".pkcs12"
    ".cert"
    ".keystore"
    ".ini"
    ".json"
    ".yml"
    ".yaml"
    ".toml"
    ".conf"
    ".cnf"
    ".config"
    ".env"
    ".git"
    ".ini"
    ".log"
    ".bak"
    ".passwd"
    ".db"
    ".backup"
    ".bck"
    ".bk"
    ".old"
)

# Parse arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        -p|--path)
            # Support both "-p /some/dir" and "--path /some/dir"
            if [[ -n $2 && ! $2 == -* ]]; then
                path="$2"
                shift 2
                for extension in "${extensions[@]}"; do
                    echo -e "${GREEN}[*] Searching for" $extension "files and storing them in assetlist-fileextensions.out: ${NC}" | tee -a assetlist-fileextensions.out
                    find $path -name *$extension* -type f 2>/dev/null | tee -a assetlist-fileextensions.out
                done   
            else
                echo -e "${RED}[*]Error: Missing argument for $1${NC}"
                exit 1
            fi
            ;;
        --path=*)
            # Support "--path=/some/dir" format
            path="${1#*=}"
            shift
            for extension in "${extensions[@]}"; do
                echo -e "${GREEN}[*] Searching for" $extension "files and storing them in assetlist-fileextensions.out: ${NC}" | tee -a assetlist-fileextensions.out
                find $path -name *$extension* -type f 2>/dev/null | tee -a assetlist-fileextensions.out
            done  
            ;;
        -*)
            echo -e "${RED}[*]Unknown option: $1${NC}"
            exit 1
            ;;
        *)
            # Allow optional positional path (e.g. ./script.sh /tmp)
            path="$1"
            shift
            ;;
    esac
done



