# Terraform GitHub Pages Site

A small Terraform project that uses the `integrations/github` provider to:

1. Create a public GitHub repository
2. Upload `site/index.html` (with the page title filled in by `templatefile()`)
3. Enable GitHub Pages so the site is live

## Usage

```bash
export GITHUB_TOKEN=...              # a GitHub personal access token
cp terraform.tfvars.example terraform.tfvars   # then edit the values

terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```

After `apply`, Terraform prints `repo_url` and `pages_url`. Pages can take
1–2 minutes to go live the first time.

To change the site, edit `page_title` in `terraform.tfvars` and run
`terraform plan` and `terraform apply` again.

`terraform destroy` deletes the repository and the site.
