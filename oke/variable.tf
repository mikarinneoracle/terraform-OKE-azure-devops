# Pass tenancy_ocid as var in the pipeline
variable "tenancy_ocid" {
}
# Pass compartment_ocid as var in the pipeline
variable "compartment_ocid" {
}
variable "region" {
  default = "eu-frankfurt-1"
}
variable "oke_image_name" {
  default = "Oracle-Linux-8.10-2024.09.30-0-OKE-1.30.1-747"
}
variable "cni_type" {
  default = "npn"   # flannel if you need an OKE cluster with Flannel
}

variable "kubernetes_version" {
  default = "v1.30.1"
}

variable "create_bastion_subnet" {
  type = bool
  default = false
}
