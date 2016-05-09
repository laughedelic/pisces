function __cursor_append_text \
  -a text \
  -d "Inserts a pair of strings (left-right) and puts the cursor between them"

  commandline --insert $text
  and __cursor_jump -(string length $text)
end
