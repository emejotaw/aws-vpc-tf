resource "aws_subnet" "private_us_east_1_a" {
    vpc_id = aws_vpc.k8s-vpc.id
    cidr_block = "10.0.0.0/19"
    availability_zone = "us-east-1a"

    tags = {
      Name = "private-us-east-1a"
      Owner = "MJ"
      "kubernetes.io/role/internal-elb" = "1"
      "kubernetes.io/cluster/k8s-cluster" = "owned"
    }
}

resource "aws_subnet" "private_us_east_1_b" {
    vpc_id = aws_vpc.k8s-vpc.id
    cidr_block = "10.0.32.0/19"
    availability_zone = "us-east-1b"

    tags = {
      Name = "private-us-east-1b    "
      Owner = "MJ"
      "kubernetes.io/role/internal-elb" = "1"
      "kubernetes.io/cluster/k8s-cluster" = "owned"
    }
}

resource "aws_subnet" "public_us_east_1_a" {
    vpc_id = aws_vpc.k8s-vpc.id
    cidr_block = "10.0.64.0/19"
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true

    tags = {
      Name = "public-us-east-1a"
      Owner = "MJ"
      "kubernetes.io/role/internal-elb" = "1"
      "kubernetes.io/cluster/k8s-cluster" = "owned"
    }
}

resource "aws_subnet" "public_us_east_1_b" {
    vpc_id = aws_vpc.k8s-vpc.id
    cidr_block = "10.0.96.0/19"
    availability_zone = "us-east-1b"
    map_public_ip_on_launch = true

    tags = {
      Name = "public-us-east-1b"
      Owner = "MJ"
      "kubernetes.io/role/internal-elb" = "1"
      "kubernetes.io/cluster/k8s-cluster" = "owned"
    }
}