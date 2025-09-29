resource "aws_s3_bucket" "main" {
  bucket        = "${local.namespace}-${random_id.id.hex}-tici"
  force_destroy = true
}
