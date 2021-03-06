provider "oci" {
  region = "us-ashburn-1"
}


variable "my_cidr" {
  description   = "CIDR block of VCN"
}

variable "my_vcn_name" {
  description   = "CIDR block of VCN"
}

resource "oci_core_vcn" "test_vcn" {
    #Required
  cidr_block      = var.my_cidr
  display_name    = var.my_vcn_name

  #Update following with your Tenancy or Compartment OCID
  compartment_id  = "YOUR COOMPARTMENT OCID or TENANCY OCID"
}
