provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_namespace" "namespace" {
  metadata {
    name = var.namespace
  }  
}

resource "kubernetes_deployment" "name" {
  metadata {
    name      = var.app
    namespace = kubernetes_namespace.namespace.metadata[0].name
  }
  spec {
    replicas = var.replicas
    selector {
      match_labels = {
        app = var.app
      }
    }
    template {
      metadata {
        labels = {
          app = var.app
        }
      }
      spec {
        container {
          name = var.app
          image = var.image
          port {
            container_port = var.container_port
          }
        }
      }
    }
  }
}
