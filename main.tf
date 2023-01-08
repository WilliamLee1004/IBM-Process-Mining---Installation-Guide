resource "ibm_compute_vm_instance" "vm1" {
hostname             = "cp4ba-IPM-v1.13-ce-terraform"
domain               = "IBM-PoC-Client-Engineering.cloud"
os_reference_code    = "CENTOS_7_64"
datacenter           = "tok05"
network_speed        = 1000
hourly_billing       = true
private_network_only = false
cores                = 8
memory               = 32768
disks                = [25, 300]
local_disk           = false
tags                 = ["william"]
}
