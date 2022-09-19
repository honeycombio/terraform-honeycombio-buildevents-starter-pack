terraform {
  required_providers {
    honeycombio = {
      source = "honeycombio/honeycombio"
      version = "~> 0.10.0"
    }
  }
}

resource "honeycombio_board" "buildevents_board" {
  name        = "Explore Buildevents"
  style       = "visual"

  query {
    caption = "Explore build failures"
    query_annotation_id = honeycombio_query_annotation.success_failure_breakdown_annotation.id
    query_id = honeycombio_query.success_failure_breakdown.id
  }

  query {
    caption = "Slow Builds? Build Times > ${var.ideal_build_duration_ms} milliseconds"
    query_annotation_id = honeycombio_query_annotation.build_times_over_ideal_annotation.id
    query_id = honeycombio_query.build_times_over_ideal.id
  }
}