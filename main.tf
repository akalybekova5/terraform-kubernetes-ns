resource "kubernetes_namespace_v1" "this" {
  metadata {
    annotations = var.annotations
    labels      = var.labels
    name        = var.name
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


