# Github Teams Management
Terraform code to manage teams and members for a Github organization

# How to use
## Sample input
```json
{
    "teams": {
        "team1": {
            "user1": "maintainer",
            "user2": "member"
        },
        "team2": {
            "user2": "member"
        }
    }
}
```
## Setup
Make sure you config Github credentials properly
```bash
export TF_VAR_token=token
export TF_VAR_organization=organization
```
## Apply
```bash
terraform init
terraform plan
terraform apply
```