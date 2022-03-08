#ec2 and s3 instance set up using child module to call up resources. Np

module "ec2-module" {
  source = "./ec2-module"
}

output "out" {
  value     = "coach32server""
  sensitive = true
}