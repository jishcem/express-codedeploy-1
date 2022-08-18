echo "Starting the server"

sudo npm install --prefix /home/ubuntu/Code/express-codedeploy-1
cd /home/ubuntu/Code/express-codedeploy-1
npm run build
sudo systemctl start node-api.service