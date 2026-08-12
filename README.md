## Usage
### Please copy paste below code

```
module ns-demo {
  source = "akalybekova5/ns/kubernetes"
  name   = "demo-ns"
  pods   = "100"

  annotations  = {
    mylabel = "label-value"
  }

  labels       = {
    mylabel = "label-value"
  }
}

```
### Run
```
terraform init
terraform apply
```