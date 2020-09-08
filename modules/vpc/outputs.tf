
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
