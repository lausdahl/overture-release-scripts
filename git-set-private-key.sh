#!/bin/bash

#
# Use like: $(./git-set-private-key.sh ~/.ssh/id_rsa_vdm2c)
#

echo 'ssh -i '$1' -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no $*' > ssh
chmod +x ssh
#export GIT_TRACE=1 
SSH_PATH=`readlink -f ./ssh`

echo "export GIT_SSH=${SSH_PATH}"

