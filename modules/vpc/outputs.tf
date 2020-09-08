
output "id" {
  value = aws_vpc.scope.id
}

output "tenancy" {
  value = aws_vpc.scope.instance_tenancy
}

output "dns_support" {
  value = aws_vpc.scope.enable_dns_support
}

output "dns_hostnames" {
  value = aws_vpc.scope.enable_dns_hostnames
}

output "vpc_cidr" {
  value = aws_vpc.scope.cidr_block
}

output "main_route_table_id" {
  value = aws_vpc.main_route_table_id
}

output "owner_id" {
  value = aws_vpc.owner_id
}
