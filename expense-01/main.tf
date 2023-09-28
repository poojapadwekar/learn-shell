module "frontend" {
  source = "./app-create"
  component = "frontend"
}


module "backend" {
  source = "./app-create"
  component = "backend"
}


module "mysql" {
  source = "./app-create"
  component = "mysql"
}