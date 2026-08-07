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

```
### Run
```
terraform init
terraform apply
```

### To see output cluster name and location 

terraform output cluster_name
terraform output cluster_location

```


### To see output add below code

```
output "cluster_name" {
  value       = google_container_cluster.primary.name
  description = "The name of the Kubernetes cluster."
}

output "cluster_location" {
  value       = google_container_cluster.primary.location
  description = "The regional or zonal location of the cluster"
}
```