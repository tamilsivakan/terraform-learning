provider "aws" {
    alias = "kgs"
    region = "us-east-2"  # Set your desired AWS region
}

provider "aws"{
    alias = "role"
region = "ap-northeast-2"
}

resource aws_instance "ec2_regionE"{
    ami = "ami-0ca2e925753ca2fb4"
    instance_type = "t2.micro"
    tags = {
      Name = "East-1"
    }
    provider = aws.sgk
}

resource aws_instance "ec2_regionNE"{
    ami = "ami-0b8414ae0d8d8b4cc"
    instance_type = "t2.micro"
    tags = {
        Name = "Northeast-2"
    }
    provider = aws.teams
}
