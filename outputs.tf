output "s3files_file_system_policies_file_system_id" {
  description = "Map of file_system_id values across all s3files_file_system_policies, keyed the same as var.s3files_file_system_policies"
  value       = { for k, v in aws_s3files_file_system_policy.s3files_file_system_policies : k => v.file_system_id if v.file_system_id != null && length(v.file_system_id) > 0 }
}
output "s3files_file_system_policies_policy" {
  description = "Map of policy values across all s3files_file_system_policies, keyed the same as var.s3files_file_system_policies"
  value       = { for k, v in aws_s3files_file_system_policy.s3files_file_system_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "s3files_file_system_policies_region" {
  description = "Map of region values across all s3files_file_system_policies, keyed the same as var.s3files_file_system_policies"
  value       = { for k, v in aws_s3files_file_system_policy.s3files_file_system_policies : k => v.region if v.region != null && length(v.region) > 0 }
}

