data "honeycombio_query_specification" "success_failure_breakdown" {
  calculation {
    op     = "HEATMAP"
    column = "derived_column.status_integer"
  }

  filter {
    column = "trace.parent_id"
    op     = "does-not-exist"
  }

  filter {
    column = "derived_column.status_integer"
    op     = "!="
    value  = "0"
  }

  breakdowns = ["status", "branch"]
  time_range = var.query_time_range
}

resource "honeycombio_query" "success_failure_breakdown" {
  dataset    = var.dataset
  query_json = data.honeycombio_query_specification.success_failure_breakdown.json
}

resource "honeycombio_query_annotation" "success_failure_breakdown_annotation" {
  dataset     = var.dataset
  query_id    = honeycombio_query.success_failure_breakdown.id
  name        = "Which builds are failing?"
  description = "Explore patterns in build failures"
}
