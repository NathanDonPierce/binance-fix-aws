# Hidden Variables

The variable key_pair_name is stored in a terraform.tfvars file hidden by .gitignore.

It is stored as:

key_pair_name = "NameOfKey"


# Initial terraform commands to provision server through terraform:

1. terraform init

2. terraform fmt

3. terraform validate


4. $myip = (Invoke-RestMethod -Uri `"https://checkip.amazonaws.com"`).Trim()
 -- Required since local IP may frequently change

5. terraform plan -var "my_ip_cidr=$myip/32"

6. terraform apply -var "my_ip_cidr=$myip/32


7. terraform destroy -var "my_ip_cidr=$myip/32"
 -- Can destroy VM when finished 

Now only need to run myip command and terraform apply