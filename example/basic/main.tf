provider "aws" {
  region = "us-east-1"
}

data "aws_ssoadmin_instances" "this" {}

locals {
  sso_instance_arn = tolist(data.aws_ssoadmin_instances.this.arns)[0]
  account_assignments = {
    abc = {
      permission_set_arn = ""
      instance_arn       = local.sso_instance_arn
      principal_id       = "abc"
      principal_type     = "GROUP"
      target_type        = "AWS_ACCOUNT"
      target_ids = [
        "123456789012",
        "210987654321",
      ]
    },
    xyz = {
      permission_set_arn = ""
      instance_arn       = local.sso_instance_arn
      principal_id       = "xyz"
      principal_type     = "GROUP"
      target_type        = "AWS_ACCOUNT"
      target_ids = [
        "123456789012",
        "210987654321",
      ]
    }
  }

}

module "aws_ssoadmin_account_assignment" {
  source   = "../../"
  for_each = local.account_assignments

  instance_arn       = each.value.instance_arn       # instance_arn - (required) is a type of string
  permission_set_arn = each.value.permission_set_arn # permission_set_arn - (required) is a type of string
  principal_id       = each.value.principal_id       # principal_id - (optional) is a type of string
  principal_type     = each.value.principal_type     # principal_type - (optional) is a type of string
  target_ids         = each.value.target_id          # target_id - (required) is a type of list(string)
  target_type        = each.value.target_type        # target_type - (optional) is a type of string
}
