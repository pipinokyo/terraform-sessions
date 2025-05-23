variable "instance_type" {
  description = "Type of instance to create"
  type        = string // string, number. boolean, list, map
  default     = "t2.micro"
}

variable "env" {
  description = "Environment name (dev, staging, prod)"
  type        = string
  default     = "dev"
}

# variable "ingress_ports" {
#   description = "a list of ingress ports"
#   type        = list(number)
#   default     = [22, 80, 443]

# }

# variable "ingress_cidr" {
#   description = "a list of cidr"
#   type        = list(string)
#   default     = ["10.0.0.0/16", "0.0.0.0/0", "0.0.0.0/0", "10.0.0.0/16"]

# }

# variable "public_subnets_cidrs" {
#   type = list(string)
#   default = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]
# }

# variable "private_subnets_cidrs" {
#   type = list(string)
#   default = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
# }

# variable "availability_zones" {
#   default = ["us-east-1a", "us-east-1b", "us-east-1c"]
# }

variable "domain_name" {
  description = "The base domain name"
  type        = string
  default     = "machtap.com"
}

variable "subject_alternative_names" {
  description = "List of subject alternative names"
  type        = list(string)
  default     = ["*.machtap.com"]
}

  
variable "provider_name" {
    description = "provider name"
    type        = string
    default     = "aws"
  
}

variable "region" {
    description = "Region"
    type        = string
    default     = "use1"
  
}

variable "business_unit" {
    description = "Business unit"
    type        = string
    default     = "orders"
}

variable "project" {
    description = "Project"
    type        = string
    default     = "tom"
  
}

variable "tier" {
    description = "Tier"
    type        = string
    default     = "db"      
  
}

variable "team" {
    description = "Team"
    type        = string
    default     = "devops"
  
}

variable "owner" {
    description = "Owner"
    type        = string
    default     = "cuneyt"
  
}

variable "managed_by" {
    description = "Managed by"
    type        = string
    default     = "terraform"
  
}

