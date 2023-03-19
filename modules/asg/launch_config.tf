resource "aws_launch_configuration" "server_launch_config" {
  name_prefix                 = "${var.common_name}-WebServer-Launch-Config"
  image_id                    = var.instance_ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  security_groups             = var.security_groups
  associate_public_ip_address = false
  iam_instance_profile        = "LabInstanceProfile"
  user_data = templatefile("${path.module}/data.sh", {
    env    = lower(var.env),
    bucket = lower(var.bucket_name),
    
  })

  metadata_options {
    http_tokens = "required"
    http_endpoint = "enabled"
  }

  root_block_device {
    volume_type = "gp2"
    volume_size = 10
    encrypted   = true
  }

  lifecycle {
    create_before_destroy = true
  }
}
