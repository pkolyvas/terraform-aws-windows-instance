output "instances" {
  description = "List of instance IDs"
  value       = ["${module.dcos-windows-instances.instances}"]
}

output "public_ips" {
  description = "List of public ip addresses created by this module"
  value       = ["${module.dcos-windows-instances.public_ips}"]
}

output "private_ips" {
  description = "List of private ip addresses created by this module"
  value       = ["${module.dcos-windows-instances.private_ips}"]
}

output "os_user" {
  description = "The OS user to be used"
  value       = "Administrator"
}

output "prereq-id" {
  description = "Returns the ID of the prereq script (if user_data or ami are not used)"
  value       = "${module.dcos-windows-instances.prereq-id}"
}

output "windows-passwords" {
  description = "Returns the decrypted AWS generated windows password"
  value       = "${data.template_file.decrypt.*.rendered}"
}
