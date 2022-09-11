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
#### vars file
```sh
name             = "demo"
cni              = "cilium"
instance_size    = "g3.k3s.large"
number_of_nodes  = "2"
k8s_applications = "Nginx,argo-cd,metrics-server,cert-manager"
```
