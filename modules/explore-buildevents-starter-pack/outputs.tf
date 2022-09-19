# Output variable definitions

output "buildevents_board_name" {
  description = "Name of the board created"
  value       = honeycombio_board.buildevents_board.name
}
