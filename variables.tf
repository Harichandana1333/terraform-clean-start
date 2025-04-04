variable "account_id" {
description = "accountid of myproject"
default = "harichandana"
type = string  
}
variable "project_n" {
description = "projectid of my project"
default = "gcp-project-440416"
type = string  
}

variable "vpcname" {
description = "name of the vpc network"
default = "vpc-network"
type=string
}

variable "subnetname" {
description = "name of the subnetwork"
default = "sub-network"
type=string
}



variable "display_name" {
description = "displayname of myproject"
default = "devops-terraform"
type=string
}

