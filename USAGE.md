<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_honeycombio"></a> [honeycombio](#requirement\_honeycombio) | >= 0.10.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_honeycombio"></a> [honeycombio](#provider\_honeycombio) | >= 0.10.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [honeycombio_board.buildevents_board](https://registry.terraform.io/providers/honeycombio/honeycombio/latest/docs/resources/board) | resource |
| [honeycombio_derived_column.build_status_integer](https://registry.terraform.io/providers/honeycombio/honeycombio/latest/docs/resources/derived_column) | resource |
| [honeycombio_query.build_times_over_ideal](https://registry.terraform.io/providers/honeycombio/honeycombio/latest/docs/resources/query) | resource |
| [honeycombio_query.success_failure_breakdown](https://registry.terraform.io/providers/honeycombio/honeycombio/latest/docs/resources/query) | resource |
| [honeycombio_query_annotation.build_times_over_ideal_annotation](https://registry.terraform.io/providers/honeycombio/honeycombio/latest/docs/resources/query_annotation) | resource |
| [honeycombio_query_annotation.success_failure_breakdown_annotation](https://registry.terraform.io/providers/honeycombio/honeycombio/latest/docs/resources/query_annotation) | resource |
| [honeycombio_query_specification.build_times_over_2_min](https://registry.terraform.io/providers/honeycombio/honeycombio/latest/docs/data-sources/query_specification) | data source |
| [honeycombio_query_specification.success_failure_breakdown](https://registry.terraform.io/providers/honeycombio/honeycombio/latest/docs/data-sources/query_specification) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_honeycomb_dataset"></a> [honeycomb\_dataset](#input\_honeycomb\_dataset) | Name of the dataset the build events data from CI/CD systems are being sent to. | `string` | `"buildevents"` | no |
| <a name="input_ideal_build_duration_ms"></a> [ideal\_build\_duration\_ms](#input\_ideal\_build\_duration\_ms) | Ideal or target build durations for your builds - in milliseconds. | `number` | `120000` | no |
| <a name="input_query_time_range"></a> [query\_time\_range](#input\_query\_time\_range) | Time range to use for the query runs - in seconds. | `number` | `604800` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_buildevents_board_name"></a> [buildevents\_board\_name](#output\_buildevents\_board\_name) | Name of the board created |
<!-- END_TF_DOCS -->