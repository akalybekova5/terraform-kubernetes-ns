resource "kubernetes_namespace_v1" "this" {
  metadata {
    annotations = var.annotations
    labels      = var.labels
    name        = var.name
  }
}

resource "kubernetes_resource_quota" "pod_limit" {
  metadata {
    name      = "pod-limit-quota"
    namespace = kubernetes_namespace_v1.this.metadata[0].name # Changed from 'this' to 'example'
  }

  spec {
    hard = {
      "pods" = var.pods
    }
  }
}



