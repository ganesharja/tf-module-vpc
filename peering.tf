# Creates Peering Between Default and Project VPC
resource "aws_vpc_peering_connection" "peer" {
  vpc_id      = var.DEFAULT_VPC_ID
  peer_vpc_id = aws_vpc.main.id
  auto_accept = true                                 # This is valid if both the VPC's are in the same account.
}