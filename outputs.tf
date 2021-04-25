output "ids" {
  description = "returns a string"
  value       = aws_ssoadmin_account_assignment.this.*.id
}

output "this" {
  value = aws_ssoadmin_account_assignment.this
}
