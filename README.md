# binance-fix-aws

iam directory are policy files used to provision iam users based off of required accesses.

Steps to create Provider profile:

aws iam create-user --user-name "user"
aws iam put-user-policy --user-name "user" --policy-name "policy" --policy-document file://"policy".json
aws iam create-access-key --user-name "user"
aws configure --profile "profile"

Provisioning a server through terraform:

terraform init
terraform fmt
terraform validate
$myip = (Invoke-RestMethod -Uri "https://checkip.amazonaws.com").Trim()
terraform plan -var "my_ip_cidr=$myip/32"
terraform apply -var "my_ip_cidr=$myip/32
terraform destroy -var "my_ip_cidr=$myip/32"

Now only need to run myip command and terraform apply