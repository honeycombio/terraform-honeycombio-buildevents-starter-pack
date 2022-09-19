resource "honeycombio_derived_column" "build_status_integer" {
  alias       = "derived_column.status_integer"
  expression  = "IF(OR(EQUALS($status, \"failure\"), EQUALS($status, \"failed\")), 1, 0)"
  description = "An integer representation of the status field allowing use of more visualizations."

  dataset = var.dataset
}