resource "aws_key_pair" "aws_key" {
  key_name   = var.key_name
  public_key = file("${var.key_path}")

  tags = merge(var.default_tags,
    {
      Name = "${var.common_name}-group0_key"
      env  = var.env
  })  
}
