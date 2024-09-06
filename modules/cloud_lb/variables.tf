variable "zone" {
  description = "Zone for the instance group"
  type        = string
}

variable "instances" {
  description = "List of instance URLs"
  type        = list(string)
}

variable "port" {
  description = "Port for health check"
  type        = number
}

variable "port_range" {
  description = "Port range for the forwarding rule"
  type        = string
}
