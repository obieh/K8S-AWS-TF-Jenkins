terraform {
  backend "s3" {
    bucket = "awsterraform2"
    key    = "jenkins/terraform.tfstate"
    region = "us-east-1"
  }
}