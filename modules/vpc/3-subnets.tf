resource "aws_subnet" "private" {
  count = length(var.private_subnets)
  vpc_id = aws_vpc.this.id
  cidr_block = var.private_subnets[count.index] 

  tags = merge(
    {Name: "${var.env}-private-${var.availability_zones[count.index]}"},
    var.private_subnet_tags
  )
}

resource "aws_subnet" "public" {
  count = length(var.public_subnets)
  vpc_id = aws_vpc.this.id
  cidr_block = var.public_subnets[count.index] 

  tags = merge(
    {Name: "${var.env}-public-${var.availability_zones[count.index]}"},
    var.public_subnet_tags
  )
}