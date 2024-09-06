variable "zone" {
  description = "Zone for deploy resources"
  type        = string
  default     = "us-central1-a"
}

variable "region" {
  description = "Region for deploy resources"
  type        = string
  default     = "us-central1"
}

variable "zones" {
  description = "List of instance URLs"
  type        = list(string)
  default     = ["us-central1-a", "us-central1-b"]
}

variable "port" {
  description = "Port to expose the app"
  type        = number
  default     = 80
}

variable "instance_count" {
  description = "Number of vm that you want to provision"
  type        = number
  default     = 2
}

variable "machine_type" {
  description = "Type of the vm"
  type        = string
  default     = "n1-standard-1"
}

variable "image" {
  description = "Imge of the vm"
  type        = string
  default     = "debian-cloud/debian-11"
}

variable "startup_script_path" {
  description = "The path of the startup script"
  type        = string
  default     = "./scripts/setup-webserver.sh"
}

variable "tags" {
  description = "List of instance URLs"
  type        = list(string)
  default     = ["webapp"]
}

variable "env" {
  description = "Environment of the resource"
  type        = string
}

variable "project_id" {
  description = "Project of the resource"
  type        = string
}