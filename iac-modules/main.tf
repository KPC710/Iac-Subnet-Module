locals {
  common_tags = {
    Application = var.app_name
    Environment = var.env_tag
  }
}
