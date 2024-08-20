provider "aws" {
  region = "us-east-1"
}

# Declare the variable
variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

# Create the S3 bucket
resource "aws_s3_bucket" "simple_web_app" {
  bucket = "simple-web-app-bucket-unique-name"
}

# Configure the S3 bucket for website hosting
resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.simple_web_app.id

  index_document {
    suffix = "index.html"
  }
}

# Use aws_s3_object instead of aws_s3_bucket_object
resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.simple_web_app.bucket
  key    = "index.html"
  source = "index.html"

}

# Output the website URL
output "website_url" {
  value = "http://${aws_s3_bucket.simple_web_app.bucket}.s3-website-${var.region}.amazonaws.com"
}
