output "common_tags" {
    description = "Tags genereted from the variable ,which are common to all the AWS resource deployed"
    value = local.common_tags
}
