variable "signalfx_key" {
  type = string
}

terraform {
  required_providers {
    signalfx = {
      source = "splunk-terraform/signalfx"
      version = "6.1.0"
    }
  }
}

provider "signalfx" {
  auth_token = var.signalfx_key
  # api_url = "https://api.us0.signalfx.com"
}

# resource "signalfx_time_chart" "mychart0" {
#     name = "CPU Total Idle"
#     description = "Very cool chart"
#
#     program_text = <<-EOF
#     data("cpu.total.idle").publish()
#     EOF
# }
#
# resource "signalfx_dashboard_group" "mydashgroup0" {
#   name = "Workshop Group"
# }
#
# resource "signalfx_dashboard" "mydashboard0" {
#   name = "Workshop Dashboard"
#   dashboard_group = signalfx_dashboard_group.mydashgroup0.id
#
#   chart {
#     chart_id = signalfx_time_chart.mychart0.id
#     width = 12
#     height = 1
#     row = 0
#   }
# }
