resource "scaleway_instance_ip" "srv_ip" {}

resource "scaleway_instance_server" "k8s-node" {
  name   = var.instance_name
  type   = var.instance-type
  ip_id  = scaleway_instance_ip.srv_ip.id
  image  = var.image

    user_data = {
    foo        = "kubernete"
    cloud-init = templatefile("${path.module}/k8s.sh", {
    hostname = var.instance_name
    })
  }
}

  output "server_ip" {
  value = scaleway_instance_ip.srv_ip.address
}