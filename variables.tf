# Terraform Variable declarations
#
# ###

# AWS specific variables
variable "region" {
  description = "AWS Region to which the servers should be provisioned"
  type = "string"
}

variable "subnet_id" {
  description = "AWS Subnet to which the host should be provisioned."
  type = "string"
  default = ''
}

variable "security_groups" {
  description = "Comma delimited string of AWS Security groups"
  type = "list"
}

variable "key_name" {
  description = "Existing AWS KeyPair name.  Must match the KeyPair referenced in key_file_path"
  type = "string"
}

variable "key_file_path" {
  description = "Location of the local private key file for the EC2 instance."
  type = "string"
}

variable "domain_name" {
  description = "domain_name"
  type = "string"
}

# Linux Username to leverage when connecting to the remote host
variable "linux_username" {
  description = "Linux Instance Username"
  type = "string"
}

variable "disk_sizes" {
  type        = "list"
  description = "sizes of disk in array"
}

variable "lin_mount_points" {
  type        = "list"
  description = "mount points"
}

variable "type" {
  description = "Ebs volume type"
  type = "string"
}

# Host specific details

variable "linux_password" {
  description = "linux_password"
  type = "string"
}

variable "node_name" {
  description = "Assigned Node name for the host"
  type = "string"
}

variable "redhat_ami" {
  description = "AWS Instance AMI"
  type = "string"
  default =  ""
}
