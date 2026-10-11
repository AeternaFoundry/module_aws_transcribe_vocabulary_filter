output "transcribe_vocabulary_filters_id" {
  description = "Map of id values across all transcribe_vocabulary_filters, keyed the same as var.transcribe_vocabulary_filters"
  value       = { for k, v in aws_transcribe_vocabulary_filter.transcribe_vocabulary_filters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "transcribe_vocabulary_filters_arn" {
  description = "Map of arn values across all transcribe_vocabulary_filters, keyed the same as var.transcribe_vocabulary_filters"
  value       = { for k, v in aws_transcribe_vocabulary_filter.transcribe_vocabulary_filters : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "transcribe_vocabulary_filters_download_uri" {
  description = "Map of download_uri values across all transcribe_vocabulary_filters, keyed the same as var.transcribe_vocabulary_filters"
  value       = { for k, v in aws_transcribe_vocabulary_filter.transcribe_vocabulary_filters : k => v.download_uri if v.download_uri != null && length(v.download_uri) > 0 }
}
output "transcribe_vocabulary_filters_language_code" {
  description = "Map of language_code values across all transcribe_vocabulary_filters, keyed the same as var.transcribe_vocabulary_filters"
  value       = { for k, v in aws_transcribe_vocabulary_filter.transcribe_vocabulary_filters : k => v.language_code if v.language_code != null && length(v.language_code) > 0 }
}
output "transcribe_vocabulary_filters_region" {
  description = "Map of region values across all transcribe_vocabulary_filters, keyed the same as var.transcribe_vocabulary_filters"
  value       = { for k, v in aws_transcribe_vocabulary_filter.transcribe_vocabulary_filters : k => v.region if v.region != null && length(v.region) > 0 }
}
output "transcribe_vocabulary_filters_tags" {
  description = "Map of tags values across all transcribe_vocabulary_filters, keyed the same as var.transcribe_vocabulary_filters"
  value       = { for k, v in aws_transcribe_vocabulary_filter.transcribe_vocabulary_filters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "transcribe_vocabulary_filters_tags_all" {
  description = "Map of tags_all values across all transcribe_vocabulary_filters, keyed the same as var.transcribe_vocabulary_filters"
  value       = { for k, v in aws_transcribe_vocabulary_filter.transcribe_vocabulary_filters : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "transcribe_vocabulary_filters_vocabulary_filter_file_uri" {
  description = "Map of vocabulary_filter_file_uri values across all transcribe_vocabulary_filters, keyed the same as var.transcribe_vocabulary_filters"
  value       = { for k, v in aws_transcribe_vocabulary_filter.transcribe_vocabulary_filters : k => v.vocabulary_filter_file_uri if v.vocabulary_filter_file_uri != null && length(v.vocabulary_filter_file_uri) > 0 }
}
output "transcribe_vocabulary_filters_vocabulary_filter_name" {
  description = "Map of vocabulary_filter_name values across all transcribe_vocabulary_filters, keyed the same as var.transcribe_vocabulary_filters"
  value       = { for k, v in aws_transcribe_vocabulary_filter.transcribe_vocabulary_filters : k => v.vocabulary_filter_name if v.vocabulary_filter_name != null && length(v.vocabulary_filter_name) > 0 }
}
output "transcribe_vocabulary_filters_words" {
  description = "Map of words values across all transcribe_vocabulary_filters, keyed the same as var.transcribe_vocabulary_filters"
  value       = { for k, v in aws_transcribe_vocabulary_filter.transcribe_vocabulary_filters : k => v.words if v.words != null && length(v.words) > 0 }
}

