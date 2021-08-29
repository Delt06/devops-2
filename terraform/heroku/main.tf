provider "heroku" {}

variable "app_name" {
  description = "Name of the Heroku app"
}

resource "heroku_app" "devops" {
  name   = var.app_name
  region = "us"
}

# Build code & release to the app
resource "heroku_build" "devops" {
  app        = heroku_app.devops.name
  buildpacks = ["https://github.com/heroku/heroku-buildpack-python"]

  source {
    url = "https://github.com/Delt06/devops-2/releases/download/v0.3.0/devops.tar.gz"
  }
}

# Launch the app's web process by scaling-up
resource "heroku_formation" "devops" {
  app        = heroku_app.devops.name
  type       = "web"
  quantity   = 1
  size       = "Standard-1x"
  depends_on = [heroku_build.devops]
}

output "app_url" {
  value = "https://${heroku_app.devops.name}.herokuapp.com"
}