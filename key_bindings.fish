function key_bindings

  bind '(' '__insert_pair \( \)'
  bind ')' '__skip_char \)'

  bind '[' '__insert_pair \[ \]'
  bind ']' '__skip_char \]'

  bind '{' '__insert_pair \{ \}'
  bind '}' '__skip_char \}'

  bind '"' '__skip_char \"; or __insert_pair "" \"'
  bind "'" "__skip_char \'; or __insert_pair '' \'"

  bind \b '__remove_empty_pair \( \); or __remove_empty_pair \[ \]; or __remove_empty_pair \{ \}; or __remove_empty_pair \" \"; or __remove_empty_pair \\\' \\\'; or commandline -f backward-delete-char'
end
