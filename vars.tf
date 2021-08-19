variable input_file {
  type        = string
  default     = "sample.input.json"
  description = "input file"
}

variable token {
    type        = string
    sensitive   = true
    description = "github token"
}

variable organization {
    type        = string
    description = "github organization"
}
