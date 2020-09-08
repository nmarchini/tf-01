output "tags" {
  description = "Map of tags"
  value       = local.merged_tags
}

output "s3objtags" {
  description = "Map of tags"
  value       = local.merged_s3_obj_tags
}
