# ansible-role-instantclient

installs and configures oracle instantclient on my mac.

## Setup

**First**, download 64 bit versions of macos-basic, sqlplus, and sdk (at least).

* The current link to the zips is http://www.oracle.com/technetwork/topics/intel-macsoft-096467.html - google will tell your where to go if this url doesn't work.
* on the download page make sure to scroll down to the 64 bit versions
* move zip files to `./ansible/roles/instantclient/files/`

**Next**, review the default variable values in `./ansible/roles/instantclient/defaults/main.yml`. If needed, override these variables in `./ansible/roles/instantclient/vars/main.yml`

## Install

In order to use the setup.sh script the following pip packages are required:

* virtualenv
* virtualenvwrapper

Ansible is installed in the virtualenv.

Run it:

````
sh setup.sh
````
