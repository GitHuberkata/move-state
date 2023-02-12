module "module-random-pet"{
    source = "../move-state/random-pet"
}
resource "random_pet" "name"{}
resource "null_resource" "localexec" {
  provisioner "local-exec" {
    command = "echo Hello ${random_pet.name.id}"
  }
}

