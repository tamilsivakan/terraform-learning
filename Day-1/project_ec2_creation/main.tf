provider "aws" {
    alias = "sgk"
    region = "us-east-2"  # Set your desired AWS region
}

provider "aws"{
    alias = "teams"
region = "ap-northeast-2"
}

resource aws_instance "ec2_region1"{
    ami = "ami-09040d770ffe2224f"
    instance_type = "t2.micro"
    tags = {
      Name = "region-1"
    }
    provider = aws.sgk
}

resource aws_instance "ec2_region2"{
    ami = "ami-0e6f2b2fa0ca704d0"
    instance_type = "t2.micro"
    tags = {
        Name = "region-2"
    }
    provider = aws.teams
}
