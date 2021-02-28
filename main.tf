terraform {
  backend "s3" {
    bucket = "xxxx-tfstate"
    key = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}