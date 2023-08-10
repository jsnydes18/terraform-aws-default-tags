variable "name" {
    type        = "string"
    description = "Primary identifier of the resource"
}

variable "source_project" {
    type        = "string"
    description = "Link to source project of the resource"
}

variable "environment" {
    type        = "string"
    description = "Deployment environment of the resourece"
}