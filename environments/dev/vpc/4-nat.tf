resource "aws_eip" "k8s-eip" {
    domain = "vpc"

    tags = {
      Name ="k8s-eip"
    }
}

resource "aws_nat_gateway" "k8s-nat-gateway" {
    allocation_id = aws_eip.k8s-nat.id
    subnet_id = aws_subnet.public_us_east_1_a.id

    tags = {
        Name = "k8s-nat"
    }

    depends_on = [ aws_internet_gateway.k8s-internet-gateway ]
}