data "honeycombio_query_specification" "build_times_over_2_min" {
  calculation {
    op     = "HEATMAP"
    column = "duration_ms"
  }

  filter {
    column = "job.status"
    op     = "="
    value  = "success"
  }

  filter {
    column = "trace.parent_id"
    op     = "does-not-exist"
  }

  filter {
    column = "duration_ms"
    op = ">"
    value = var.ideal_build_duration_ms
  }

  time_range = var.query_time_range
}

resource "honeycombio_query" "build_times_over_ideal" {
  dataset    = var.dataset
  query_json = data.honeycombio_query_specification.build_times_over_2_min.json
}

resource "honeycombio_query_annotation" "build_times_over_ideal_annotation" {
    dataset     = var.dataset
    query_id    = honeycombio_query.build_times_over_ideal.id
    name        = "Which builds are slow?"
    description = "Explore builds that are taking longer than the preffered ${var.ideal_build_duration_ms} milliseconds"
}
