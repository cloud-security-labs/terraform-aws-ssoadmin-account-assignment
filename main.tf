resource "aws_ssoadmin_account_assignment" "this" {
  for_each           = length(var.target_ids) > 0 ? toset(var.target_ids) : []
  instance_arn       = var.instance_arn
  permission_set_arn = var.permission_set_arn
  principal_id       = var.principal_id
  principal_type     = var.principal_type
  target_id          = each.value
  target_type        = var.target_type
}
