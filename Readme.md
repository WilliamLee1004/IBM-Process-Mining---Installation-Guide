# Installation IBM Process Mining of stand alone version

The device spec for installation:

| spec    | size            |
|---------|-----------------|
| CPU     | 8 core 64 bit   |
| Memory  | 32 Gi           |
| Storage | 300Gi           |
| OS      | CentOS 7.9.2009 |

For practice purpose, we create a Classic VM in IBM cloud.( You can use [Terrafrom script](#main.tf) to create  the VM )

   ```tf
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
   ```

---

For Prerequisites, upload the package of ibmprocessmining, mongodb.rpm and nginx.rpm to the environment. ( you may find the resource [here](https://ibm.box.com/s/u5i6eoaqic0kulm5of1e80bk7lw0hds2) )
