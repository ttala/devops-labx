variable "instance-type" {
  type    = string
  default = "PLAY2-NANO"
}

variable "image" {
  type    = string
  default = "ubuntu_jammy"
}

variable "instance_name" {
  type    = string
  default = "controlplane"
}