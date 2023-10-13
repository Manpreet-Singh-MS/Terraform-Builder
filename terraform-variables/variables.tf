variable "filename" {
        default = "/home/ubuntu/terraform-builder/terraform-variables/devops-automated.txt"

}

variable "content" {
        default = "This is a auto generated from a variable" 
}

variable "devops" {}

variable "content-map" {
    type = map 
    default = {
        "content1" = "This is a sample text with map type"
        "content2" = "This is a sample text 2 with map type"
    }
}

variable "file_list" {
    type = list
    default = ["/home/ubuntu/terraform-builder/terraform-variables/file_1.txt","/home/ubuntu/terraform-builder/terraform-variables/file_2.txt"]
}

variable "aws_ec2_object" {
    type = object ({
        name = string
        instances = number
        keys = list(string)
        ami = string
    })


default = {
    name = "test_ec2"
    instances = 4
    keys = ["key1.pem","key2.pem"]
    ami = "ubuntu-adef"
}
}