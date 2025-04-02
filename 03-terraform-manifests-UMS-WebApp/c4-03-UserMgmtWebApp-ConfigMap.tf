resource "kubernetes_config_map_v1" "ConfigMap" {
  metadata {
    name = "usermanagement-dbcreation-script"
  }

  data = {
    "webappdb.sql" = "${file("${path.module}/webappdb.sql")}"
  }
}