#!/usr/bin/env bash

function command_exists() {
    \command -v ${1} > /dev/null 2>&1 || {
        return 1
    }
}

export PROJECT_HOME="${HOME}/dev"
export WORKON_HOME="${PROJECT_HOME}/ENVS"
VENV_PROJECT=instant-oracle

[[ ! -d $WORKON_HOME  ]] && mkdir -p $WORKON_HOME
[[ ! -d $PROJECT_HOME  ]] && mkdir -p $PROJECT_HOME

source /usr/local/bin/virtualenvwrapper.sh

mkvirtualenv ${VENV_PROJECT}
source ${WORKON_HOME}/${VENV_PROJECT}/bin/activate
pip install -r requirements.pip

if command_exists "ansible-playbook"; then
    ansible-playbook --ask-sudo-pass -i ansible/inventories/osx ansible/main.yml --connection=local
fi
