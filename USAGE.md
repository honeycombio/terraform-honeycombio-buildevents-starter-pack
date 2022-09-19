<!-- BEGIN_TF_DOCS -->

## Requirements

| Name                                                                      | Version  |
|---------------------------------------------------------------------------|----------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13 |

## Providers

| Name                                                             | Version   | Description                                                                           |
|------------------------------------------------------------------|-----------|---------------------------------------------------------------------------------------|
| <a name="honeycombio"></a> [honeycombio](#provider\_honeycombio) | ~> 0.10.0 | Set the API key used by Terraform setting the HONEYCOMB_API_KEY environment variable. |



## Modules

No modules.

## Resources

| Name                                                                                                                                   | Type     |
|----------------------------------------------------------------------------------------------------------------------------------------|----------|
| [honeycombio_board](https://registry.terraform.io/providers/honeycombio/honeycombio/latest/docs/resources/board)                       | resource |
| [honeycombio_derived_column](https://registry.terraform.io/providers/honeycombio/honeycombio/latest/docs/resources/derived_column)     | resource |
| [honeycombio_query](https://registry.terraform.io/providers/honeycombio/honeycombio/latest/docs/resources/query)                       | resource |
| [honeycombio_query_annotation](https://registry.terraform.io/providers/honeycombio/honeycombio/latest/docs/resources/query_annotation) | resource |

## Inputs

| Name                                                                                                          | Description                                                        | Type     | Default       | Required |
|---------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|----------|---------------|:--------:|
| <a name="input_honeycomb_dataset_name"></a> [honeycomb\_dataset\_name](#input\_honeycomb\_dataset\_name)      | Honeycomb dataset name.                                            | `string` | "buildevents" |    no    |
| <a name="input_query_time_range"></a> [query\_time\_range](#input\_query\_time\_range)                        | Time range to use for the query runs - in seconds.                 | `number` | 604800        |    no    |
| <a name="input_ideal_build_duration_ms"></a> [ideal\_build\_duration\_ms](#input\_ideal\_build\_duration\_ms) | Ideal or target build durations for your builds - in milliseconds. | `number` | 120000        |    no    |

## Outputs

| Name                                                                                                         | Description           |
|--------------------------------------------------------------------------------------------------------------|-----------------------|
| <a name="output_buildevents_board_name"></a> [buildevents\_board\_name](#output\_buildevents\_board\_name)   | Name of Board created |
<!-- END_TF_DOCS -->
