
#!/usr/bin/bash

sudo systemctl daemon-reload
sudo rm -f /etc/nginx/sites-enabled/default


sudo ln -s /etc/nginx/sites-available/bus_resv /etc/nginx/sites-enabled/
#sudo ln -s /etc/nginx/sites-available/blog /etc/nginx/sites-enabled
#sudo nginx -t
sudo gpasswd -a www-data ubuntu
sudo systemctl restart nginx

