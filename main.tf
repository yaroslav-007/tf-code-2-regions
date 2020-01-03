provider "aws" {
  region     = "eu-west-2"
  access_key = ""
  secret_key = ""
}

provider "aws" {
  alias      = "frank"
  region     = "eu-central-1"
  access_key = ""
  secret_key = ""
}


resource "aws_instance" "london" {
  ami           = "ami-05f37c3995fffb4fd"
  instance_type = "t2.micro"
  tags = {
    Name = "Test-London"
  }
}


resource "aws_instance" "frankfurt" {
  ami           = "ami-0d4c3eabb9e72650a"
  instance_type = "t2.micro"
  provider      = aws.frank
  tags = {
    Name = "Test-Frankfurt"
  }
}