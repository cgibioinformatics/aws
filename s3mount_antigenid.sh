mkdir /shared/s3mnt
chmod 777 /shared/s3mnt
echo Y | sudo apt-get install libfuse-dev libcurl4-openssl-dev libxml++2.6-dev libssl-dev htop
cd /shared/s3fs-fuse/
sudo ./autogen.sh
sudo ./configure 
sudo make
sudo make install
cd /shared
sudo echo AKIAJOUE6CZYZYQENBJA:D3k6rYpBpVD6v6FOyw5o7NWwnvPmme6VYWcawgJC > /shared/passwd-s3fs
sudo chmod 600 /shared/passwd-s3fs
s3fs cgix-nc-antigenid /shared/s3mnt -o passwd_file=/shared/passwd-s3fs -o umask=0000
