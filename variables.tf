variable "github_token" {
  description = "GitHub personal access token"
  type        = string
  sensitive   = true
}

variable "github_owner" {
  description = "GitHub username or organization"
  type        = string
}

variable "cpu" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"  # or t3.medium or whatever you prefer
}
