sudo yum update -y
sudo yum install -y httpd
sudo systemctl enable httpd
sudo service httpd start  
sudo echo '<h1>Welcome to Test Webserver</h1>' | sudo tee /var/www/html/index.html
sudo mkdir /var/www/html/test
sudo echo '<h1>Welcome to Test Page</h1> <p>Terraform Demo</p>  </body></html>' | sudo tee /var/www/html/test/index.html
sudo curl http://169.254.169.254/latest/dynamic/instance-identity/document -o /var/www/html/test/metadata.html
