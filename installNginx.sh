# Install Git
sudo apt-get install git -y

# Install NGINX
sudo apt-get install nginx -y

# Start NGINX
sudo systemctl start nginx

# Enable NGINX to start on boot
sudo systemctl enable nginx

# Clone the GitHub repository
git clone https://github.com/MustaphaAgboola/UserInfo.git /tmp/UserInfo

# Remove the default NGINX index.html
sudo rm /var/www/html/index.nginx-debian.html

# Copy the content from the cloned repository to the NGINX web directory
sudo cp -r /tmp/UserInfo/* /var/www/html/

# Set the appropriate permissions
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

# Restart NGINX to apply changes
sudo systemctl restart nginx