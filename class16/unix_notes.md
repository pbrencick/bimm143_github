## Core Unix commands

Most unix commands have super short names, which makes them quick to type but 
annoying to learn. Major file systems related commands include:

pwd:   Print working directory
ls:    List files and directories
cd:    Change directory
mkdir: Make a new directory
rm:    Removes files and directories (delete)
cp:    Copy files (source > destination)
mv:    Move file or directories (basically re-name)
nano:  A text editors (very basic but always available)

curl:      Download files from web or ftp
wget:      Download files from the web
tar -zxvf: UnTar (unpackage) Tar archive files
gunzip:    Unzip files
$PATH:     The places (dirs) to look for programs. 

## AWS EC2 Instance

Connect to my instance with:

ssh -i ~/Downloads/bimm143_pbrencick.pem ubuntu@ec2-35-163-1-11.us-west-2.compute.amazonaws.com

Secure Copy files between machines, in this case from our instance to our laptop 
scp -i ~/Downloads/bimm143_pbrencick.pem ubuntu@ec2-35-163-1-11.us-west-2.compute.amazonaws.com:/home/ubuntu/work/bimm143_github/class16/results.txt .

## Class 17 Instance 

ssh -i ~/Downloads/bimm143_pbrencick.pem ubuntu@ec2-35-160-255-52.us-west-2.compute.amazonaws.com

Store your key with:        export KEY=~/Downloads/bimm143_pbrencick.pem
Store the server with:      export SERVER=ubuntu@ec2-35-160-255-52.us-west-2.compute.amazonaws.com
Call them with:             ssh -i $KEY $SERVER
Pull everything back over:  scp -i $KEY $SERVER:~/*_quant .


