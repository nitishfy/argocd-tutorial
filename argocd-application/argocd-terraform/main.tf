resource "argocd_application" "helm" {
  metadata {
    name      = "helm-app-using-terraform"
    namespace = "argocd"
    labels = {
      test = "true"
    }
  }

  spec {
    destination {
      server    = "https://kubernetes.default.svc"
      namespace = "terraform"
    }

    source {
      repo_url        = "https://github.com/nitishfy/argocd-tutorial"
      path            = "argocd-application/helm/nginx"
      target_revision = "main"
      helm {
        value_files = ["custom-values.yaml"]
      }
    }
  }
}