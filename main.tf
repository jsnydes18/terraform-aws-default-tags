locals {
    tags = {
        name           = var.name
        source_project = var.source_project
        environment    = var.environment
    }
    asg_tags = [
        {
            key                 = "name"
            value               = var.name
            propagate_at_launch = true
        },{
            key                 = "source_project"
            value               = var.source_project
            propagate_at_launch = true
        },{
            key                 = "environment"
            value               = var.environment
            propagate_at_launch = true
        }
    ]
}