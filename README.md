# terrafom-ansible-3tier
## Install terraform
https://github.com/devopstrainingschool/Installing-terraform.

## Configure terraform to aws
https://github.com/devopstrainingschool/Terraform-with-AWS-configuration
### Don't forget to install terraform.py
```
yum install python3-pip -y
```
```
sudo yum install jq -y
```

```
pip3 install python-terraform
```
## Install ansible
```
yum install epel-release -y
```
```
yum install ansible -y
```
## Copy terraform.py to /usr/local/bin/
```
mv terraform.py /usr/local/bin/
```
```
chmod +x /usr/local/bin/terraform.py
```
## finally run :
```
bash scripts/deploy-with-ansible.sh
```
NB: change the nbring provider to ansible
```
terraform {
  required_providers {
    ansible = {
      version = "~> 1.3.0"
      source  = "ansible/ansible"
      
    }
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0.0"
    }
  }
}
provider "aws" {
    region  = "${var.region}"
}
```
