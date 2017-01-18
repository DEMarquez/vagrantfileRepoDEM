apt-get -y install apache2
cd ..
cd ..
sudo cp -r /vagrant/sitio1 /var/www/
sudo cp -r /vagrant/sitio2 /var/www/
sudo a2dissite default
sudo a2enmod vhost_alias
sudo service apache2 restart
sudo cp -r /vagrant/config/sitio1 /etc/apache2/sites-available/
sudo cp -r /vagrant/config/sitio2 /etc/apache2/sites-available/
sudo a2ensite sitio1
sudo a2ensite sitio2
sudo service apache2 restart
