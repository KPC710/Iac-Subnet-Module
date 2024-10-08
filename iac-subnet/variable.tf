variable "app_name" {
  description = "The name of the application"
  type        = string
}

variable "env_tag" {
  description = "The env name to be used while tag"
  type        = string
}

variable "m_vpc_id" {
  type        = string
  description = "The Vpc id to deploy the new subnet in"
  default     = "null"
}

variable "m_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "m_availability_zone" {
  description = "Availability zone for Subnet"
  type        = string
}

variable "m_map_public_ip_on_launch" {
  type        = bool
  description = <<-EOF
    If set to true newtowk created in this subnet will have public IP assigned by default
    If set to false , network interface created in this subnet will not have public IP assigned by default

    defaults to false if no value is specified
    EOF

  default = false
}

variable "m_tags" {
  type        = map(string)
  description = "Tags"
  default     = {}
}

variable "m_is_local" {
  type        = bool
  description = "is subnet local/non-routable?"
  default     = false
}

variable "m_is_public" {
  type        = bool
  description = "If no route table is defined , used to automatically define route table association in LZ"
  default     = false
}

variable "m_route_table_name" {
  type        = string
  description = "Route table name"
  default     = "null"
}

variable "aws_region" {
  description = "The AWS region where resources will be created"
  type        = string
}
