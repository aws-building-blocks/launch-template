# AMI
data "aws_ami" "ami" {
  most_recent = var.most_recent_ami
  owners      = var.owners

  filter {
    name   = var.ami_name_filter
    values = var.ami_values_filter
  }
}

# Launch Template
resource "aws_launch_template" "template" {
  name                   = var.template_name
  description            = var.template_description
  image_id               = data.aws_ami.ami.id
  instance_type          = var.instance_type
  user_data              = var.use_userdata ? base64encode(file(var.userdata_script_path)) : null
  vpc_security_group_ids = var.vpc_security_group_ids

  iam_instance_profile {
    arn = var.instance_profile_arn
    # name = var.instance_profile_name
  }

  tags = merge(var.template_tags, {
    Name = var.template_name
  })
}
