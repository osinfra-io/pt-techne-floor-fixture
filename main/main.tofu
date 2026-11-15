# Kubernetes Namespace Resource
# https://search.opentofu.org/provider/hashicorp/kubernetes/latest/docs/resources/namespace_v1

resource "kubernetes_namespace_v1" "floor_fixture" {
  metadata {
    name = "floor-fixture"
  }
}
