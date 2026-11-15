# Kubernetes Config Map Resource
# https://search.opentofu.org/provider/hashicorp/kubernetes/latest/docs/resources/config_map_v1

resource "kubernetes_config_map_v1" "regional" {
  data = {
    workspace = "regional"
  }

  metadata {
    name      = "regional"
    namespace = "floor-fixture"
  }
}
