#! /bin/bash

# Get idex.html from s3 bucket
sudo yum update -y
sudo yum install -y httpd
#sudo yum install -y wget
sudo systemctl start httpd
sudo systemctl enable httpd
sudo chkconfig httpd on
#cd /var/www/html
sudo curl https://group0bucket1.s3.amazonaws.com/index.html -o /var/www/html/index.html
sudo curl https://group0bucket2.s3.amazonaws.com/index.html -o /var/www/html/index.html
sudo curl https://group0bucket3.s3.amazonaws.com/index.html -o /var/www/html/index.html