locals {
    tags = {
        name           = var.name
        source_project = var.project
        environment    = var.environment
    }
    asg_tags = [
        {
            key                 = "name"
            value               = var.name
            propagate_at_launch = true
        },{
            key                 = "project"
            value               = var.project
            propagate_at_launch = true
        },{
            key                 = "environment"
            value               = var.environment
            propagate_at_launch = true
        }
    ]
}