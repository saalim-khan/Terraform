
resource "github_repository" "terraform-automation-" {
  name        = "terraform-automation1"
  description = "created this repo with the help of terraform "

  visibility = "public"
  auto_init = true
}