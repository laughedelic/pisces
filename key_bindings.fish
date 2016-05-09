function key_bindings

  for pair in $match_pairs
    __bind_pair (string split ',' $pair)
  end

  bind \b __backspace_override
end
