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
Provider  does not have a package available for your current platform, darwin_arm64
```
brew uninstall terraform
brew install tfenv
TFENV_ARCH=amd64 tfenv install 1.3.3
tfenv use 1.3.3
```
