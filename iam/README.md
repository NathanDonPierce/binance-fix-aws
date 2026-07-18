# iam user policies

## iam directory are policy files used to provision iam users based off of required accesses.

Steps to create Provider profile:

1. aws iam create-user --user-name "user"
2. aws iam put-user-policy --user-name "user" --policy-name "policy" --policy-document file://"policy".json
3. aws iam create-access-key --user-name "user"
4. aws configure --profile "profile"

## Step to update policy:

aws iam put-user-policy --user-name "name" --policy-name "policy" --policy-document file://"policy".json