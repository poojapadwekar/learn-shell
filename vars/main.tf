variable "fruit" {
 default = "apple"
}

variable "fruits" {
default = [ "apple", "banana"]
}

variable "fruit_price" {
default = {
  apple = 10
  banana = 20
 }
}

output "first_fruit" {
 value = var.fruit(0)
}

output "first_price" {
 value = "Price of apple = ${var.fruit_price["apple"]}"
}