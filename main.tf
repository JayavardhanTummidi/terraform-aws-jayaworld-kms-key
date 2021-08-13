provider "aws" {
  region = var.region
}
# To encrypt the data, creating KMS key 
resource "aws_kms_key" "jaya-world-kms" {
    description              = "${var.description}"
    key_usage                = "${var.key_usage}"
    customer_master_key_spec = "${var.customer_master_key_spec}"
    deletion_window_in_days = "${var.deletion_window_in_days}"
    enabled = "true"
    enable_key_rotation = "${var.enable_key_rotation}"
    alias = "${var.alias}"
    policy = "${var.policy}"
    is_enabled = "true"
    tags = merge(var.tags) 
}
