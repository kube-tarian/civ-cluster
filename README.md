## Provision civo cluster
#### update token file
Generate a token from civo UI and update the token by creating token.tf file
```sh
provider "civo" {
  token  = "TOKEN"
  region = "NYC1"
}
```

#### Create cluster
```sh
terraform init
terraform plan
terraform apply 
```

