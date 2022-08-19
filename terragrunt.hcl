locals {
  remote_state_bucket = "remote-state-tf"
  project_name = "demo-vpc"
  aws_region = "eu-central-1"
  random = "220817"
}

remote_state {
  backend = "s3"
  generate = {
    path = "__backend.tf"
    if_exists = "overwrite"
  }

  config = {
    bucket         = format("%s-%s-%s", local.remote_state_bucket, local.project_name, local.random)
    region         = local.aws_region
    key            = "${path_relative_to_include()}/terraform.tfstate"
    dynamodb_table = format("tf-state-lock-%s", local.project_name)
    encrypt        = true
  }
}
terraform {
  extra_arguments "common_vars" {
    commands = get_terraform_commands_that_need_vars()

    required_var_files = [
      find_in_parent_folders("variable.tfvars"),
    ]
  }
}