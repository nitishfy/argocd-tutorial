variable "username" {
  type        = string
  description = "username of the argocd server"
}

variable "password" {
  type        = string
  description = "password for argocd server"
}

variable "server_addr" {
  type        = string
  description = "server address where argocd runs on"
}

variable "insecure" {
  type        = bool
  description = "skip TLS encryption"
}