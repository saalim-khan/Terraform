terraform {
  backend "s3" {
    bucket = "saalim-tf"
    region = "us-east-1"
    key="terraform.tfstate"
    dynamodb_table = "saalim-tf-table"
  }
}
variable "access_key" {
  type = string
}
variable "secret_key" {
  type = string
}
provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}
resource "aws_instance" "web" {
  ami           = "ami-0e472ba40eb589f49"
  instance_type = "t2.small"
}