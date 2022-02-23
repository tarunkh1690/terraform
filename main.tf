resource "docker_image" "bridge_integrity" {
 name = "tarunkhare89/firstng:latest"
}

resource "docker_container" "bridge_integrity_container" {
  count = length(var.container_names)
  image = docker_image.bridge_integrity.latest
  name = var.container_names[count.index]
  ports {
   internal = "${8080 + count.index +1}"
   external = "${9090 + count.index +1}"
 }
}

variable "container_names" {
  type = list(string)
  default = ["first", "second"]

}
