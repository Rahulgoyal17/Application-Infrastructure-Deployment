# Terrafrom-aws-challenge
Repository For Terrafrom-aws-challenge

1) To launch EC2 server using terraform. 
   I am using EC2 module so that I can use (re-use) same module for diffrent environment and application.
   Using backed as s3 to store state files
   Using jenkins to trigger the terraform to provision EC2 server
   Tracking changes in GitHub repository 
   

2) For Application Deployment I am using ansible as configuration management tool
   Using jenkins to trigger the Ansible to deploy Hello world Application

3) Rollout / Deployment of new application version
   Same ansible playbook will deploy the new application version on same server (mutable)

