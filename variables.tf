variable "transcribe_vocabulary_filters" {
  description = <<EOT
Map of transcribe_vocabulary_filters, attributes below
Required:
    - language_code
    - vocabulary_filter_name
Optional:
    - region
    - tags
    - tags_all
    - vocabulary_filter_file_uri
    - words
EOT

  type = map(object({
    language_code              = string
    vocabulary_filter_name     = string
    region                     = optional(string)
    tags                       = optional(map(string))
    tags_all                   = optional(map(string))
    vocabulary_filter_file_uri = optional(string)
    words                      = optional(list(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.transcribe_vocabulary_filters : (
        v.vocabulary_filter_file_uri == null || (length(v.vocabulary_filter_file_uri) >= 1 && length(v.vocabulary_filter_file_uri) <= 2000)
      )
    ])
    error_message = "must be between 1 and 2000 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.transcribe_vocabulary_filters : (
        length(v.vocabulary_filter_name) >= 1 && length(v.vocabulary_filter_name) <= 200
      )
    ])
    error_message = "must be between 1 and 200 characters"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

