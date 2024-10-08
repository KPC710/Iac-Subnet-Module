locals {
  subnet_name = format("aws-subnet-%s-%s", var.env_tag, var.app_name)
  aws_region  = data.aws_region.current.name
  vpc_id      = data.aws_vpc.self
}

data "aws_region" "current" {}

# locals {
#   aws_region = data.aws_region.current.name
# }

data "aws_vpc" "self" {
  tags = {
    Name = format("vpc-kpc-%s", local.aws_region)
  }
}

data "aws_route_table" "self" {
  count  = var.m_is_local ? 0 : 1
  vpc_id = local.vpc_id

  tags = {
    Name = var.m_is_public == true ? format("rtb-kpc-%s-igw", local.aws_region) : format("rtb-kpc-%s", local.aws_region)
  }
}

resource "aws_subnet" "main" {
  vpc_id                  = var.m_vpc_id == null ? local.vpc_id : var.m_vpc_id
  cidr_block              = var.m_cidr_block
  availability_zone       = "${local.aws_region}${var.m_availability_zone}"
  map_public_ip_on_launch = var.m_map_public_ip_on_launch

  tags = merge({ Name = "${local.subnet_name}" }, var.m_tags)
}

resource "aws_route_table_association" "self" {
  subnet_id      = aws_subnet.main.id
  route_table_id = var.m_route_table_name == null ? data.aws_route_table.self[0].id : var.m_route_table_name
}