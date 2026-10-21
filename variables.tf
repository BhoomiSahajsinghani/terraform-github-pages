# Your GitHub username (the account that will own the repo).
variable "github_owner" {
  type        = string
  description = "GitHub username that will own the repository"
}

# Name of the new repository. It also becomes part of the Pages URL.
variable "repo_name" {
  type        = string
  description = "Name of the GitHub repository to create"
}

# Text inserted into the web page's <title> and main heading.
variable "page_title" {
  type        = string
  description = "Title shown on the GitHub Pages site"
}
