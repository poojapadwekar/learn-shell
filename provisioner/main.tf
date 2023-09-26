resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo hello world"
  }
}


resource "null_resource" "test1" {
  provisioner "local-exec" {
    command = <<EOF
    echo Hello World
    pwd
    ls -lrth
    EOF
  }
}


