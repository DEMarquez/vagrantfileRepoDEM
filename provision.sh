sudo apt-get -y update
sudo apt-get -y install apache2
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password root'
sudo apt-get -y install mysql-server libapache2-mod-auth-mysql php5-mysql
sudo apt-get -y install php5 libapache2-mod-php5 php5-mcrypt
sudo cp -r ~/vagrant/sitio1 /var/www/
sudo cp -r ~/vagrant/sitio2 /var/www/
sudo a2dissite default
sudo a2enmod vhost_alias
sudo service apache2 restart
sudo cp -r ~/vagrant/config/sitio1 /etc/apache2/sites-available/
sudo cp -r ~/vagrant/config/sitio2 /etc/apache2/sites-available/
sudo a2ensite sitio1
sudo a2ensite sitio2
sudo service apache2 restart
