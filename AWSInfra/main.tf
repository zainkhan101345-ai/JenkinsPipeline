provider "aws"{
    region="eu-north-1"
}

resource "aws_instance" "web-portal"{
    ami=data.aws_ami.ubuntu.id
    instance_type ="t3.micro"
    
    tags={
        Name="web-ec2"
    }
}