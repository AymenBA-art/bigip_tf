terraform {
  required_providers {
    bigip = {
      source = "F5Networks/bigip"
      version = "1.15"
    }
  }
}

provider "bigip" {
    address = "192.168.1.28"
    username = "awx"
    password = "Ansible1+"
}
 
resource "bigip_as3"  "as3-example" {
     as3_json = "${file("example.json")}"
 }