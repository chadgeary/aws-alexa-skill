# Summary
Create an Alexa-compatible AWS Lambda function using Terraform.

# AWS + Terraform + Deploy Instructions
```
#############################
##          AWS            ##
#############################
# Install python3 pip
sudo apt update && sudo DEBIAN_FRONTEND=noninteractive apt-get -q -y install python3-pip

# Install awscli via pip
pip3 install --user --upgrade awscli

# Set admin user credentials
~/.local/bin/aws configure

# Validate configuration
~/.local/bin/aws sts get-caller-identity 

#############################
##       Terraform         ##
#############################
# Add terraform's apt key
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
 
# Add terraform's apt repository
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
 
# Install terraform and git
sudo apt-get update && sudo apt-get -y install terraform git
 
# Clone the project
git clone https://github.com/chadgeary/aws-alexa-skill && cd ./aws-alexa-skill

#############################
##        Deploy           ##
#############################
# Review / Modify variabels
cat aws.tfvars

# Initialize terraform
terraform init

# Deploy
terraform deploy -var-file="aws.tfvars"
```
