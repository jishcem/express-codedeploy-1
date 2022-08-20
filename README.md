# NodeJs TypeScript Express App Deploy to EC2 using AWS S3 Artifact.

# In the project terminal to upload the project zip to aws s3.
zip -r project.zip . -x node_modules\* dist\* .git\* && aws s3 cp project.zip s3://typescript-express-artifact/code-deploy-1/project.zip




# In the server
aws s3 cp s3://typescript-express-artifact/code-deploy-1/project.zip project.zip
unzip -o project.zip -d Code/express-codedeploy-1/
npm install --prefix Code/express-codedeploy-1/
npm run build --prefix Code/express-codedeploy-1/
sudo systemctl restart node-api.service