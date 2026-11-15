# Locals
# https://github.com/osinfra-io/pt-techne-floor-fixture

locals {
  # try() lets this evaluate outside a cluster (e.g. tofu validate on a workstation), where
  # these files don't exist; in-cluster the runner always has them mounted.
  cluster_ca_certificate = try(file("/var/run/secrets/kubernetes.io/serviceaccount/ca.crt"), "")
  token                  = try(file("/var/run/secrets/kubernetes.io/serviceaccount/token"), "")
}
