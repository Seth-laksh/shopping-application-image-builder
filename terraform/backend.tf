terraform {
  backend "s3" {
    bucket         = "terraform.seth-devops.online"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
  }
}
