function __remove_empty_pair \
  -a left right \
  -d "Removes an empty pair (left-right) or returns false"

  set left_len (string length $left)
  set right_len (string length $right)
  set length (math "$left_len + $right_len")

  if [ (__cursor_get_text -$left_len $length) = "$left$right" ]

    # __cursor_jump $right_len
    # for i in (seq 1 $length)
    commandline -f delete-char backward-delete-char
    # end

    return 0
  end

  return 1
end
