# Link to the repository on GitHub.
output "repo_url" {
  description = "URL of the GitHub repository"
  value       = github_repository.site.html_url
}

# Link to the live site. GitHub Pages project sites follow the
# pattern https://<owner>.github.io/<repo>/
output "pages_url" {
  description = "URL of the live GitHub Pages site"
  value       = "https://${lower(var.github_owner)}.github.io/${var.repo_name}/"
}
