function key_bindings

  bind '(' '__insert_pair \( \)'
  bind ')' '__skip_char \)'

  bind '[' '__insert_pair \[ \]'
  bind ']' '__skip_char \]'

  bind '{' '__insert_pair \{ \}'
  bind '}' '__skip_char \}'

  bind '"' '__skip_char \"; or __insert_pair "" \"'
  bind "'" "__skip_char \'; or __insert_pair '' \'"
end
