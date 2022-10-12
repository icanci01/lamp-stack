#/!bin/bash

sudo apt-get install

sudo iptables -I INPUT 6 -m state --state NEW -p tcp --dport 80 -j ACCEPT
sudo iptables -I INPUT 6 -m state --state NEW -p tcp --dport 443 -j ACCEPT

sudo netfilter-persistent save

sudo apt update

sudo apt install figlet -y

sudo apt install apache2 -y

sudo service apache2 restart

sudo apt install mariadb-server -y

sudo mysql_secure_installation

sudo mysql -u root -p < database.sql

sudo apt update

sudo apt upgrade -y

sudo apt -y install lsb-release apt-transport-https ca-certificates

sudo apt install software-properties-common

sudo add-apt-repository ppa:ondrej/php -y

sudo apt install php7.4

sudo apt install php7.4-{cli,common,curl,zip,gd,mysql,xml,mbstring,json,intl}

sudo cp wordpress.conf /etc/apache2/sites-available/wordpress.conf

sudo mkdir wordpress

cd wordpress

sudo get -c https://wordpress.org/latest.tar.gz

tar -xvzf latest.tar.gz

rm latest.tar.gz

sudo rsync -avP ./wordpress/ /var/www/html/wordpress

figlet $(ls /var/www/html/wordpress)

sudo chown -R www-data:www-data /var/www/html/wordpress/

sudo chmod 755 -R /var/www/html/wordpress

sudo a2enmod rewrite

sudo a2ensite wordpress.conf

systemctl restart apache2

figlet "Finished, Rebooting"

sudo reboot

