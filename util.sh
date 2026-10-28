backup() {
  local filepath="$1"
  local new_filepath="$filepath.bak"

  [[ -z "$filepath" ]] && error "Must pass '\$filepath' (arg1)" && return

  if [[  -f "$filepath"  ]]; then
    mv "$filepath" "$new_filepath" && echo "Renamed '$filepath' to '$new_filepath'"
  elif [[ -f "$new_filepath" ]]; then
    echo "$new_filepath exists. Leaving as is."
  else
    echo "Something went wrong..."
    return 1
  fi
}

restore() {
  local filepath="$1.bak"
  local new_filepath="$1"

  [[ -z "$filepath" ]] && error "Must pass '\$filepath' (arg1)" && return

  if [[  -f "$filepath"  ]]; then
    mv "$filepath" "$new_filepath" && echo "Renamed '$filepath' to '$new_filepath'"
  elif [[ -f "$new_filepath" ]]; then
    echo "$new_filepath exists. Leaving as is."
  else
    echo "Something went wrong..."
    return 1
  fi
}

make_request() {
  local message="$1"

  [[ -z "$message" ]] && error "Must pass '\$message' (arg1)" && return

  echo "Sending request to claude: $message"
  claude -p --model haiku --effort low "$message"
}
