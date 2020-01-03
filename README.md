# Terraform project that creates Multiple Provider Instances
This is project creates Multiple Provider Instances in AWS accordingly to article: https://www.terraform.io/docs/configuration/providers.html#alias-multiple-provider-instances

When applied, it will create one EC2 instance in London and second in Franfurt

## Pre-requirements

**Install Terraform:**
Download and install terraform cli accordingly to your OS as described here:

https://www.terraform.io/downloads.html



## How to run the code


 OS system | Operation
 ------------ | -------------
| Windows | Start menu -> Run and type cmd |
| Linux  |Start terminal |
| macOS | Press Command - spacebar to launch Spotlight and type "Terminal," then double-click the search result. |

## Clone the code locally:

    git clone https://github.com/yaroslav-007/tf-code-2-regions.git
    cd tf-code-2-regions
   
## Edit main.tf adding you AWS credentials - access and secret key.

```
  access_key = "AKIA..."
  secret_key = "SQSWA..."
```
## Run the following commands:
    terraform init
    terraform apply -auto-approve
