# Request a spot instance at $0.03
resource "aws_spot_instance_request" "spotmcit" {
  ami           = "ami-1234"
  spot_price    = "0.03"
  instance_type = "c4.xlarge"
  count = 3
  tags = {
    Name = "spotmcit-${count.index}"
  }
}
