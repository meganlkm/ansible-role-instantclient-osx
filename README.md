# ansible-role-instantclient

installs and configures oracle instantclient on my mac.

## Setup

**First**, download 64 bit versions of macos-basic, sqlplus, and sdk (at least).

* The current link to the zips is http://www.oracle.com/technetwork/topics/intel-macsoft-096467.html - google will tell you where to go if this url doesn't work.
* on the download page make sure to scroll down to the 64 bit versions

**Next**, review the default variable values in `./ansible/roles/instantclient/defaults/main.yml`.
these variables can be overriden in `./ansible/roles/instantclient/vars/main.yml`


## Install

```bash
sh setup.sh
```
