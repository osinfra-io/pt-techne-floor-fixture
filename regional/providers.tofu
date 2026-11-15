terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 3.0"
    }
  }
}

provider "kubernetes" {
  cluster_ca_certificate = local.cluster_ca_certificate
  host                   = "https://kubernetes.default.svc"
  token                  = local.token
}
