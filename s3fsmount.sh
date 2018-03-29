#!/bin/bash
. /etc/cfncluster/cfnconfig
s3fs cgix-nc-rna-seq /home/ubuntu/s3mnt -o passwd_file=/home/ubuntu/passwd-s3fs -o umask=0000
