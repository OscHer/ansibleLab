#! /bin/bash

MYCOLLECTION=mercury
echo $MYCOLLECTION > provisional_inventory
ansible $MYCOLLECTION -m ping -u vagrant  -i provisional_inventory
