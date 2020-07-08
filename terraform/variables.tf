# When a default is not provided the value is retrieved 
# from an environment variable if possible, ex TF_VAR_aws_account_id
variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_account_id" {}
variable "aws_region" {
  default = "eu-west-1"
}

variable "github_token" {}
variable "github_repo_owner" {
  default = "gunnie"
}
variable "github_repo_name" {
  default = "jekyll-blog"
}

variable "jekyll_codebuild_project_name" {
  default = "jekyll-codebuild-project"
}

variable "s3_codepipeline_bucket_name" {
  default = "codepipeline.zgunnie.eu"
}

variable "s3_logging_bucket_id" {
  default = "arn:aws:s3:::jekyll-logs.zgunnie.com"
}

variable "s3_website_bucket_id" {
  default = "arn:aws:s3:::www.zgunnie.com"
}

variable "s3_website_bucket_name" {
  default = "www.zgunnie.com"
}
