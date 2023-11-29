variable "AWS_ACCESS_KEY_ID" {
  type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}

variable "AWS_SESSION_TOKEN" {
  type    = string
  default = null
}

variable "AWS_REGION" {
  type = string
}

variable "template_name" {
  type        = string
  default     = null
  description = "(Optional) The name of the launch template. If you leave this blank, Terraform will auto-generate a unique name."
}

variable "template_description" {
  type        = string
  default     = null
  description = "(Optional) Description of the launch template."
}

variable "most_recent_ami" {
  type = bool
}

variable "owners" {
  type = list(string)
}

variable "ami_name_filter" {
  type = string
}

variable "ami_values_filter" {
  type = list(string)
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "use_ssh" {
  type        = bool
  default     = false
  description = "Whether to use SSH to access the EC2 instances"
}

variable "key_name" {
  type    = string
  default = null
}

variable "use_userdata" {
  description = "Whether to use userdata"
  type        = bool
  default     = false
}

variable "userdata_script_path" {
  description = "Path to the userdata script"
  type        = string
}

variable "vpc_security_group_ids" {
  type        = list(string)
  description = "(Optional) A list of security group IDs to associate with."
}

variable "instance_profile_arn" {
  type        = string
  description = "The Amazon Resource Name (ARN) of the instance profile."
}

variable "template_tags" {
  type = map(string)
}
