terraform {
  required_providers {
    ciscomcd = {
      source  = "CiscoDevNet/ciscomcd"
      version = "0.2.3"
    }
  }
}

provider "ciscomcd" {
  api_key_file = file(var.VALTIX_API_KEY_FILE)
}