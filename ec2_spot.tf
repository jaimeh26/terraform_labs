data "aws_ami" "spotmcit" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "architecture"
    values = ["arm64"]
  }
  filter {
    name   = "name"
    values = ["al2023-ami-2023*"]
  }
}

resource "aws_instance" "spotmcit" {
  ami = data.aws_ami.spotmcit.id
      spot_options {
      max_price = 0.0031
    }
  }
  instance_type = "t4g.nano"
  tags = {
    Name = "test-spot"
  }
