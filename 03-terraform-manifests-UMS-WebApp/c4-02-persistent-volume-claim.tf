resource "kubernetes_persistent_volume_claim_v1" "pvc" {
  metadata {
    name = "ebs-mysql-pv-claim"
  }
  spec {
    access_modes = ["ReadWriteOnce"]
    storage_class_name = "ebs-sc"
    resources {
      requests = {
        storage = "4Gi"
      }
    }
  }
}
