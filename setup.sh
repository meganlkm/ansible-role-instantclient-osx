#!/usr/bin/env bash

function command_exists() {
    \command -v ${1} > /dev/null 2>&1 || {
        return 1
    }
}

if ! command_exists "virtualenv"; then
    pip install virtualenv
fi

FILES_DIR="./ansible/roles/instantclient/files"
[[ ! -d $FILES_DIR ]] && mkdir $FILES_DIR
mv *.zip $FILES_DIR/

[[ ! -f ./.venv/bin/activate ]] && virtualenv .venv
source ./.venv/bin/activate
pip install -r requirements.pip

ansible-playbook --ask-sudo-pass -i ansible/inventories/osx ansible/main.yml --connection=local -vvvv
