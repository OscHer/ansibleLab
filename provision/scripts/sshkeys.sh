#!/bin/bash

# Now there's onlyey one managed node; but maybe later we'll have some more
# so we want to have everything reade to crawl over an array
NODE=mercury

echo "---------------------------"
echo "Deploying pubkey to $NODE: "
su -c 'SSHPASS=vagrant sshpass -e ssh-copy-id -o "StrictHostKeyChecking=no" vagrant@mercury' vagrant
