variable "instance_count" {
  description = "Number of VM instances"
  type        = number
}

variable "machine_type" {
  description = "Machine type for VM instances"
  type        = string
}

variable "zones" {
  description = "List of zones to deploy VM instances"
  type        = list(string)
}

variable "image" {
  description = "Image to use for the VM instances"
  type        = string
}

variable "startup_script" {
  description = "Path to the startup script"
  type        = string
}

variable "tags" {
    description = "The tags for the vm"
    type        = list(string)
}