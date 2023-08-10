output "tags" {
    description = "Map type object of tags"
    value       = local.tags
}

output "asg_tags" {
    description = "List of Map type object of tags for AutoScaling Groups"
    value       = local.tags
}