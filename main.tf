#Generally allows Terraform to interact with infrastructure providers
provider "null" {}


#Generally used to configure a resource in the infrastructure provider
#We define a null_resource named "create_txt_file"
#A provisioner block is used to specify actions to prepare resources on the infrastructure
resource "null_resource" "craete_txt_file" {
  provisioner "local-exec" {
    command = "echo Hello, World!"
  }
}
