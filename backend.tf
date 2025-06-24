
terraform {
  backend "s3" {
    bucket         = "terraform-state-infra123"
    key            = "dr-dc/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
