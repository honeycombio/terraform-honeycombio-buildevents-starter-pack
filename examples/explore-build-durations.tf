terraform {
  cloud {
    organization = "honeycomb"

    workspaces {
      name = "buildevents-quick-start-guides"
    }
  }
}

module "explore-buildevents-starter-pack" {
  source = "../modules/explore-buildevents-starter-pack"

  dataset = "buildevents" # Optional: defaults to buildevents
  query_time_range = 604800 # in seconds. Optional: defaults to 7 days
  ideal_build_duration_ms = 120000 # in milliseconds. Optional: defaults to 2 minutes
}
