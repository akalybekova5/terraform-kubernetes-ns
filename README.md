## Usage
### Please copy paste below code

```
module ns-demo {
    source = "akalybekova5/ns/kubernetes"
    name        = "demo-ns"

  annotations  = {
    mylabel = "label-value"
  }

  labels       = {
    mylabel = "label-value"
  }

}


resource "kubernetes_resource_quota" "pod_limit" {
  metadata {
    name      = "${kubernetes_namespace.this.metadata[0].name}-pod-limit"
    namespace = kubernetes_namespace.this.metadata[0].name
  }
  spec {
    hard = {
      pods = "100"
    }
  }
}


```
### Run
```
terraform init
terraform apply
```