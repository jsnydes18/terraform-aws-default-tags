locals {
      project_name = "default-asg-tag-example"
}

module "example_asg_tags" {
      source         = "git@github.com:jsnydes18/terraform-aws-default-tags.git"
      name           = locals.project_name
      source_project = "https://github.com/jsnydes18/terraform-aws-default-tags"
}

resource "aws_launch_template" "foobar" {
  name_prefix   = "foobar"
  image_id      = "ami-1a2b3c"
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "bar" {
  availability_zones = ["us-east-1a"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id      = aws_launch_template.foobar.id
    version = "$Latest"
  }

  tags = module.example_asg_tags.asg_tags
}