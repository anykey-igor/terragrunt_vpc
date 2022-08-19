include {
  path = find_in_parent_folders()
}

terraform {
  source = "git@github.com:anykey-igor/terraform_aws_vpc.git//."
}

