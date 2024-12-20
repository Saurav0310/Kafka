# The AWS account ID to enable for the Private Link Access.
# You can find your AWS account ID here (https://console.aws.amazon.com/billing/home?#/account) under My Account section of the AWS Management Console. Must be a 12 character string.
aws_account_id = "242201285111"

# The VPC ID that you want to connect to Confluent Cloud Cluster
# https://us-east-1.console.aws.amazon.com/vpc/home?region=us-east-1#vpcs:
# DNS hostnames and DNS resolution should be enabled:
# * Your VPC -> Actions -> Edit DNS hostnames
# * Your VPC -> Actions -> Edit DNS resolution
vpc_id = "vpc-0eadd1b36215a8723"

# The region of your VPC that you want to connect to Confluent Cloud Cluster
# Cross-region AWS PrivateLink connections are not supported yet.
region = "us-east-2"

# The map of Zone ID to Subnet ID. You can find subnets to private link mapping information by clicking at VPC -> Subnets from your AWS Management Console (https://console.aws.amazon.com/vpc/home)
# https://us-west-1.console.aws.amazon.com/vpc/home?region=us-east-1#subnets:search=vpc-abcdef0123456789a
# You must have subnets in your VPC for these zones so that IP addresses can be allocated from them.
subnets_to_privatelink = {
  "use2-az1" = "subnet-0bcdead07ba3a9216",
  "use2-az2" = "subnet-06bf46c02edf0f437",
  "use2-az3" = "subnet-0df5f1a8635cc120e",
}

# Limitations of AWS PrivateLink
# https://docs.confluent.io/cloud/current/networking/private-links/aws-privatelink.html#limitations