#! /bin/bash

MYCOLLECTION=mercury
echo $MYCOLLECTION > provisional_inventory
su -c "ansible $MYCOLLECTION -m ping -u vagrant  -i provisional_inventory" vagrant 
