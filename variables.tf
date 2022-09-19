# Input variable definitions

variable "honeycomb_dataset" {
  description = "Name of the dataset the build events data from CI/CD systems are being sent to."
  type        = string
  default     = "buildevents"
}

variable "query_time_range" {
  description = "Time range to use for the query runs - in seconds."
  type        = number
  default     = 604800 # 7 days in seconds
}

variable "ideal_build_duration_ms" {
  description = "Ideal or target build durations for your builds - in milliseconds."
  type        = number
  default     = 120000 # 2 minutes in milliseconds
}