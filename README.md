# Tikal exercise 

[![Build Status](https://travis-ci.com/Goshaka/tikal-exercise.svg?branch=main)](https://travis-ci.org/joemccann/dillinger)

# Prerequisites:
 - Ubuntu server
 - AWS free tier account
 - AWS default vpc
 - SSH client
 - Browser
- git clien should be installed on Ubuntu server
- AWS access & secrets keys should be generated


### Jenkins installation

Login to your Ubuntu server

Install the Ansible with requirements

```sh
$sudo apt update && sudo apt install -y python3 && sudo apt install -y python3-pip  && sudo pip3 install boto3 && sudo pip3 install ansible
$ echo "export PATH=$PATH:~/.local/bin" >> ~/.bashrc && . ~/.bashrc
```

Download exercise solution files from github

```sh
$  git clone https://github.com/Goshaka/tikal-exercise.git  
```

Create jenkins ec2 server buy execute ansible playbook tikal.yml 

```sh
$  cd tikal-exercise/  
$  ansible-playbook tikal.yml -e @tikal-vars.yml -e aws_access_key='your_aws_access_key' -e aws_secret_key='your_aws_secret_key' -e YourInternetIP='YourInternetIP'
```

### Jenkins pipeline creation

Once the Jenkins server will be created and UP
Go to AWS console EC2 service and find out instance public IP

