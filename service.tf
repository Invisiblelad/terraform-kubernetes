resource "kubernetes_service" "service" {
  metadata {
    name = var.app
    namespace = kubernetes_namespace.namespace.metadata[0].name
  }
  spec {
    selector = {
        app = kubernetes_deployment.name.spec[0].template[0].metadata[0].labels.app
    }
    port {
      port = var.svc_port
      target_port = var.svc_target_port
    }
    type = var.svc_type
  }
}