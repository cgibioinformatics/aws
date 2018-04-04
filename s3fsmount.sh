sudo s3fs cgix-nc-rna-seq /home/ubuntu/s3mnt -o passwd_file=/home/ubuntu/passwd-s3fs,allow_other,uid=1000,gid=1000,umask=0000 
/home/ubuntu/s3mnt/aws-scripts-mon/mon-put-instance-data.pl --mem-util --mem-used --mem-avail --auto-scaling
