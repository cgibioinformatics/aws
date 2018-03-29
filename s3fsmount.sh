#!/bin/bash
rm s3fsmount.sh
s3fs cgix-nc-rna-seq /home/ubuntu/s3mnt -o passwd_file=/home/ubuntu/passwd-s3fs -o umask=0000
bash s3fsmount.sh
