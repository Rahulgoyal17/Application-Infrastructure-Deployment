#!/bin/bash

git clone https://github.com/Rahulgoyal17/Application-Deployment.git

sleep 10s

ansible-playbook  -i "localhost," -c local Application-Deployment/webserver.yml
