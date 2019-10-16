sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y npm supervisor
sudo npm install -g npm
cd ~
git clone --recursive https://github.com/lip-realmax/3dCamera.git
cd 3dCamera
sudo npm install
sudo cp /home/pi/3dCamera/camera.conf /etc/supervisor/conf.d/camera.conf
sudo supervisorctl reread
sudo supervisorctl update
sudo service supervisor restart
