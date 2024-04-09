#!/usr/bin/bash 

sed -i 's/\[]/\["34.247.71.205"]/' /home/ubuntu/bus_resv/bus_resv/settings.py

python3 /home/ubuntu/bus_resv/manage.py migrate 
python3 /home/ubuntu/bus_resv/manage.py makemigrations     
python3 /home/ubuntu/bus_resv/manage.py collectstatic
sudo service gunicorn restart
sudo service nginx restart
#sudo tail -f /var/log/nginx/error.log
#sudo systemctl reload nginx
#sudo tail -f /var/log/nginx/error.log
#sudo nginx -t
#sudo systemctl restart gunicorn
#sudo systemctl status gunicorn
#sudo systemctl status nginx
# Check the status
#systemctl status gunicorn
# Restart:
#systemctl restart gunicorn
#sudo systemctl status nginx
