terraform {
  cloud {
    organization = "honeycomb"

    workspaces {
      name = "buildevents-starter-pack-tests"
    }
  }
}

module "honeycomb-buildevents-starter-pack" {
  source = "../"

  honeycomb_dataset = "buildevents" # Optional: defaults to buildevents
  query_time_range = 604800 # in seconds. Optional: defaults to 7 days
  ideal_build_duration_ms = 120000 # in milliseconds. Optional: defaults to 2 minutes
}
