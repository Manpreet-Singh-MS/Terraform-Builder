terraform {
    required_providers {
        docker = {
            source = "kreuzwerker/docker"
            version = "3.0.2"
        }
    }
}

provider "docker" {}

resource "docker_image" "jenkins" {
    name = "jenkins/jenkins"
    keep_locally = false
}

resource "docker_container" "jenkins" {
    image = docker_image.jenkins.image_id
    name = "jenkins-tf"
    ports {
        internal = 8080
        external = 8080
    }
}
