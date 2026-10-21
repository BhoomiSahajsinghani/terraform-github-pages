# Create a public repository and turn on GitHub Pages for it.
resource "github_repository" "site" {
  name        = var.repo_name
  description = "Static site created and managed with Terraform"
  visibility  = "public"

  # Create the repo with an initial commit so the "main" branch exists.
  # Pages needs a branch to serve from.
  auto_init = true

  # Serve the site from the root folder of the main branch.
  pages {
    source {
      branch = "main"
      path   = "/"
    }
  }
}

# Upload index.html into the repo.
# templatefile() reads site/index.html and replaces ${page_title}
# with the value of var.page_title.
resource "github_repository_file" "index" {
  repository          = github_repository.site.name
  branch              = "main"
  file                = "index.html"
  content             = templatefile("${path.module}/site/index.html", { page_title = var.page_title })
  commit_message      = "Update index.html via Terraform"
  overwrite_on_create = true
}
