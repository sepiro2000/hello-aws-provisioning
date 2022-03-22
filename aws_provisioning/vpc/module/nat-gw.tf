resource "aws_eip" "nat" {
  count = length(var.availability_zones)
  vpc   = true
}

resource "aws_nat_gateway" "nat" {
  count         = length(var.availability_zones)
  allocation_id = aws_eip.nat[count.index].id
  subnet_id     = aws_subnet.public[count.index].id

  tags = {
    Name = "nat-gw-${format("%02d", count.index+1)}-${var.vpc_name}"
  }
}