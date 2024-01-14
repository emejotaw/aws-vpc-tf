resource "aws_internet_gateway" "k8s-internet-gateway" {
    vpc_id = aws_vpc.k8s-vpc.id

    tags = {
        Name = "k8s-internet-gateway"
        Owner = "MJ"
    }
}