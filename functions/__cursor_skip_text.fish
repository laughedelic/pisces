function __cursor_skip_text \
  -a text \
  -d "Skips given text if it's already under the cursor"

  set length (string length $text)

  if [ (__cursor_get_text 0 $length) = $text ]
    __cursor_jump $length
    return 0
  else
    commandline -i $text
    return 1
  end
end
