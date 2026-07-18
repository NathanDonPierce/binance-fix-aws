# Hidden Variables

The variable key_pair_name is stored in a terraform.tfvars file hidden by .gitignore.

It is stored as:

key_pair_name = "NameOfKey"


# Initial terraform commands to provision server through terraform:

1. terraform init

2. terraform fmt

3. terraform validate

4. terraform plan -var "my_ip_cidr=$(curl -s https://checkip.amazonaws.com)/32"

5. terraform apply -var "my_ip_cidr=$(curl -s https://checkip.amazonaws.com)/32"


6. terraform destroy -var "my_ip_cidr=$(curl -s https://checkip.amazonaws.com)/32"
 -- Can destroy VM when finished 

Now only need to run myip command and terraform apply