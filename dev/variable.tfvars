region             = "eu-central-1"
name               = "Cloud-VPC"
environment        = "DEV"
availability_zones = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]

# VPC
enable_vpc           = true
vpc_name             = "My_VPC_DEV"
instance_tenancy     = "default"
enable_dns_support   = true
enable_dns_hostnames = true
enable_classiclink   = false
vpc_cidr             = "172.31.0.0/16"

#Subnet
name_public_subnet = "My_public_subnet"
public_subnet_cidr = ["172.31.10.0/24", "172.31.11.0/24", "172.31.12.0/24"]
#map_public_ip_on_launch  = true #autoallocation public IP: default = true

name_private_subnet = "My_private_subnet"
private_subnet_cidr = ["172.31.20.0/24", "172.31.21.0/24", "172.31.22.0/24"]
#map_public_ip_on_launch  = false #autoallocation public IP: default = false

name_database_subnet = "My_database_subnet"
database_subnet_cidr = ["172.31.30.0/24", "172.31.31.0/24", "172.31.32.0/24"]
#map_public_ip_on_launch  = false  #autoallocation public IP: default = false

# Internet Gateway
enable_internet_gw = true # true/false
internet_gw_name   = "My_Internet_Gateway"
internet_gw_vpc_id = ""

# NAT
enable_nat_gw = true # true/false
nat_gw_name   = "My_NAT_Gateway"
single_nat_gw = true # true/false

# DHCP
enable_dhcp                           = true # true/false
vpc_dhcp_name                         = "My_DHCP_Server"
vpc_dhcp_options_domain_name          = "dev.local"
vpc_dhcp_options_domain_name_servers  = ["AmazonProvidedDNS"]
vpc_dhcp_options_ntp_servers          = []
vpc_dhcp_options_netbios_name_servers = []
vpc_dhcp_options_netbios_node_type    = ""

# Network ACLs
enable_network_acl = true # true/false
network_acl_name   = "My_Network_ACLs"
network_acl_vpc_id = ""
network_acl_subnet_ids = null
network_acl_ingress = [{
  from_port       = 0
  to_port         = 0
  rule_no         = 100
  action          = "allow"
  protocol        = -1
  cidr_block      = "0.0.0.0/0"
  ipv6_cidr_block = null
  icmp_type       = 0
  icmp_code       = 0
}]

network_acl_egress = [{
  from_port       = 0
  to_port         = 0
  rule_no         = 100
  action          = "allow"
  protocol        = -1
  cidr_block      = "0.0.0.0/0"
  ipv6_cidr_block = null
  icmp_type       = 0
  icmp_code       = 0
  }
]
manage_default_route_table = false