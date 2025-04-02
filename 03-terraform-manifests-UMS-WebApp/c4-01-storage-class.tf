# Resource: Kubernetes Storage Class
# Kubernetes_storage_class_v1

resource "kubernetes_storage_class_v1" "ebs-sc" {
  metadata {
    name = "ebs-sc"
  }
  storage_provisioner = "ebs.csi.aws.com"
  volume_binding_mode = "WaitForFirstConsumer"

  }