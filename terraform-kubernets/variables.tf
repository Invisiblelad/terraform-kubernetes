variable "namespace" {
  type = string
  description = "The namespace of the deployment"
}

variable "app" {
  type = string
  description = "application"
}

variable "replicas" {
  type = string
  description = "Replicas of the application"
}

variable "image" {
  type = string
  description = "application image"
}

variable "container_port" {
  type = number
  description = "container port"
}

variable "svc_port" {
  type = number
  description = "svc port"
}

variable "svc_target_port" {
  type = number
  description = "target port"
}

variable "svc_type" {
  type = string
  description = "service type"
}
