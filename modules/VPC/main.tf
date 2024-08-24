resource "aws_flow_log" "example" {
  traffic_type    = "ALL"
  vpc_id          = aws_vpc.issue_vpc.id
}


resource "aws_vpc" "issue_vpc" {
  cidr_block = var.cidr_block
}

resource "aws_default_security_group" "default" {
  vpc_id = aws_vpc.issue_vpc.id
}
