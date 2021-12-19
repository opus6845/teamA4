output "s3_bucket_arn" {
  value = aws_s3_bucket.s3_terraform_state.arn

}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.dynamo_locks.name
}