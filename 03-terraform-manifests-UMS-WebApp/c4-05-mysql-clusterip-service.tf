resource "kubernetes_service_v1" "mysql_clusterip_service" {
  metadata {
    name = "mysql"
  }
  spec {
    selector = {
      app = kubernetes_deployment_v1.mysql_deployment.spec.0.selector.0.match_labels.app
    }
    port {
      port        = 3306   #Service Port
      #target_port = 3306 Ignored when we use cluster ip = none
    }

    type = "clusterIP" # this means we are going to use MySQL Pod Ip
    cluster_ip = "None"
  }
}