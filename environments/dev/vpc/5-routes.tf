resource "aws_route_table" "k8s-private-route-table" {
    vpc_id = aws_vpc.k8s-vpc.id

    route = {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.k8s-nat.id
    }

    tags = {
        Name = "k8s-private-route-table"
        Owner = "MJ"
    }
}

resource "aws_route_table" "k8s-public-route-table" {
  vpc_id = aws_vpc.k8s-vpc.id

  route = {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.k8s-internet-gateway.id
  }

  tags = {
    Name = "k8s-public-route-table"
    Owner = "MJ"
  }
}

resource "aws_route_table_association" "private_us_east_1a" {
  subnet_id = aws_subnet.private_us_east_1_a.id
  route_table_id = aws_route_table.k8s-private-route-table.id
}

resource "aws_route_table_association" "private_us_east_1b" {
    subnet_id = aws_subnet.private_us_east_1_b.id
    route_table_id = aws_route_table.k8s-private-route-table.id
}

resource "aws_route_table_association" "public_us_east_1a" {
    subnet_id = aws_subnet.public_us_east_1_a
    route_table_id = aws_route_table.k8s-public-route-table.id
}

resource "aws_route_table_association" "public_us_east_1b" {
    subnet_id = aws_subnet.public_us_east_1_b.id
    route_table_id = aws_route_table.k8s-public-route-table
}

