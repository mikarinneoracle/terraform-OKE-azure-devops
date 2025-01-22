terraform {
  required_version = ">=1.5.0"
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "6.18.0"
      configuration_aliases = [oci.home]
    }
  }
  # Use sed to set the STATEFILE_PAR backend address from pipeline vars 
  # OCI provider does not allow any other type of backend configuration 
  backend "http" {
    address = "STATEFILE_PAR"
    update_method = "PUT"
  }
}

provider "oci" {
  region = var.region
  auth = "InstancePrincipal"
}

provider "oci" {
  auth = "InstancePrincipal"
  alias = "home"
  region = one(data.oci_identity_region_subscriptions.home.region_subscriptions[*].region_name)
}