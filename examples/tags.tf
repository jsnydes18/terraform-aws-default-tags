locals {
      project_name = "default-tag-example"
}

module "example_tags" {
      source         = "git@github.com:jsnydes18/terraform-aws-default-tags.git"
      name           = locals.project_name
      source_project = "https://github.com/jsnydes18/terraform-aws-default-tags"
      environment    = "test
}

resource "aws_s3_bucket" "example-bucket" {
  bucket = "${project_name}-bucket"

  tags = module.example_tags.tags
}
