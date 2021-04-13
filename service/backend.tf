terraform {
  backend "s3" {
    bucket         = "terraaform-state-file-013567"
    region         = "us-west-2"
    key            = "service/terraform.tfstate"
    dynamodb_table = "terraform-lock-db"
    encrypt        = true
  }
}


data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "terraaform-state-file-013567"
    key    = "network/terraform.tfstate"
    region = "us-west-2"
  }
}
