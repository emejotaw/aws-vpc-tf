variable "env" {
    description = "Environment name"
    type = string
}

variable "vpc_cidr_block" {
    description = "VPC CIDR"
    type = string
    default = "10.0.0.0/16"
}

variable "owner" {
    description = "Owner of the resource"
    type = string
    default = ""
}

variable "availability_zones" {
    description = "Availability zones for subnets"
    type = list(string)
}

variable "private_subnets" {
    description = "CIDR ranges for private subnets"
    type = list(string)
}

variable "public_subnets" {
    description = "CIDR ranges for public subnets"
    type = list(string)
}

variable "private_subnet_tags" {
    description = "Private subnet tags"
    type = map(string)
    default = {}
}

variable "public_subnet_tags" {
    description = "Public subnet tags"
    type = map(string)
    default = {}
}