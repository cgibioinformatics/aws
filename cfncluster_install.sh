#!/bin/bash
chmod 777 /shared/s3mnt

#sudo yum -y install automake fuse fuse-devel gcc-c++ git libcurl-devel libxml2-devel make openssl-devel
#sudo yum -y install htop

## for ubuntu
echo Y | apt-get install libfuse-dev libcurl4-openssl-dev libxml++2.6-dev libssl-dev htop


#git clone https://github.com/s3fs-fuse/s3fs-fuse
cd /shared/s3fs-fuse/
./autogen.sh
./configure 

make
make install

cd /shared

echo AKIAJ4I7DART6NDIO42A:I5fXJxnJjF0Yk5XUU1w75V+7C6ejU0QIJg8IIG/M > /shared/passwd-s3fs

chmod 600 /shared/passwd-s3fs

s3fs cgix-nc-rna-seq /shared/s3mnt -o passwd_file=/shared/passwd-s3fs -o umask=0000

pip install slackclient


