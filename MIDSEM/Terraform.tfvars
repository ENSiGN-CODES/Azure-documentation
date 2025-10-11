resource_group_name = "archit-backend-rg"
admin_username      = "architsexyboi"
admin_password      = "hotassgaynigga"
vnet_name             = "myVnet"
address_space         = ["10.0.0.0/16"]
subnet_prefixes       = ["10.0.1.0/24", "10.0.2.0/24"]
subnet_names          = ["subnet1", "subnet2"]

location              = "UAENorth"
vm_os_simple          = "UbuntuLTS"
admin_username        = "azureuser"
admin_password        = "ChangeMe123!"

network_interface_id  = ""
public_ip_id          = ""

os_disk_type          = "Standard_LRS"
publisher             = "Canonical"
offer                 = "UbuntuServer"
sku                   = "18.04-LTS"

vm_size               = "Standard_DS1_v2"

nsg_name              = "myNSG"
appgw_name            = "myAppGateway"
sku_name              = "Standard_v2"
sku_tier              = "Standard_v2"
capacity              = 2
subnet_id             = "subnet_resource_id_here"
frontend_port         = 80
appgw_public_ip_id    = "public_ip_id_here"
backend_fqdns         = ["backend1.example.com"]
backend_port          = 80
backend_protocol      = "Http"
listener_protocol     = "Http"

image_name            = "nginx:latest"
container_name        = "nginx_container"
internal_port         = 80
external_port         = 8080
environment_variables = {
  ENV = "dev"
}

common_name           = "example.com"
organization          = "MyOrganization"
validity_period_hours = 8760
