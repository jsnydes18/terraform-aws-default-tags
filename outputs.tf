output "tags" {
    description = "Map type object of tags"
    value       = locals.tags
}

output "asg_tags" {
    description = "List of Map type object of tags for AutoScaling Groups"
    value       = locals.tags
}