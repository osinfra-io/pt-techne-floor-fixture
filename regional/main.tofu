# Kubernetes Config Map Resource
# https://search.opentofu.org/provider/hashicorp/kubernetes/latest/docs/resources/config_map_v1

resource "kubernetes_config_map_v1" "regional" {
  data = {
    workspace = "floor-test-1794847621"
  }

  metadata {
    name      = "regional"
    namespace = "floor-fixture"
  }
}
