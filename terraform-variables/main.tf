resource "local_file" "devops" { 
        filename = "/home/ubuntu/terraform-builder/terraform-variables/devops_test.txt"
        content = var.content-map["content1"]
}

resource "local_file" "devops-var" {
        filename = var.filename
        content = var.content-map["content2"]
}

resource "local_file" "list-var" { 
        filename = var.file_list[0]
        content = var.content-map["content1"]
}

resource "local_file" "list-var-2" {
        filename = var.file_list[1]
        content = var.content-map["content2"]
}

output "devops" {
    value = var.devops
}

output "aws_ec2_info" {
    value = var.aws_ec2_object.instances
}

