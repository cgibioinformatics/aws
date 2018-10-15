sudo s3fs cgix-nc-exome-seq /home/ubuntu/s3mnt -o passwd_file=/home/ubuntu/passwd-s3fs,allow_other,uid=1000,gid=1000,umask=0000 
echo Y | sudo add-apt-repository ppa:openjdk-r/ppa
echo Y | sudo apt-get update
echo Y | sudo apt-get install openjdk-8-jdk
echo Y | sudo apt-get install libwww-perl libdatetime-perl fastqc picard python-pip
echo Y | sudo pip install numpy
echo Y | sudo pip install pandas
/home/ubuntu/s3mnt/aws-scripts-mon/mon-put-instance-data.pl --mem-util --mem-used --mem-avail --auto-scaling
export PATH=$PATH:/shared/STAR
export PATH=$PATH:/shared/cufflink
export PATH=$PATH:/shared/
