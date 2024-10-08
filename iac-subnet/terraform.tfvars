app_name = "Demo-App"
aws_region = "us-west-1"
env_tag  = "Prod"
# m_vpc_id                   = "your_vpc_id"        # Optional, can be left as "null" if default is acceptable
m_cidr_block              = "10.0.0./24"
m_availability_zone       = "us-east-1a"
m_map_public_ip_on_launch = false                                        # You can change to true if needed
m_tags                    = { "Application" = "subnetDev", "Env" = "P" } # Add your key-value tags
m_is_local                = false                                        # Change to true if necessary
m_is_public               = false                                        # Change to true if needed
# m_route_table_name         = "your_route_table_name"  # Optional, can be left as "null" if default is acceptable
