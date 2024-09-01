output "nginx_ip" {
  value = kubernetes_service.service.status[0].load_balancer[0].ingress[0].ip
  description = "service external ip"
}