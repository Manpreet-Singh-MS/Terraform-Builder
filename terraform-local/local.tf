resource "local_file" "devops" {
	filename = "/home/ubuntu/terraform-builder/terraform-local/devops_automated_sample.txt"
	content = "This is a sample text automated by using terraform HCL" 
	}

resource "random_string" "rand-str" {
	length = 16
	special = true
	override_special = "!@#$%^&*()_{}<>:?"
	}

output "rand-str" {
	value = random_string.rand-str[*].result
	}
