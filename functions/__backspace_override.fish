function __backspace_override -d "Overrides backspace to handle empty pairs removal"

  for pair in $match_pairs
    __remove_empty_pair (string split ',' $pair)
    and return 0
  end

  commandline -f backward-delete-char
end
