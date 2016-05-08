function __remove_empty_pair \
  -a left right \
  -d "Removes an empty pair (left-right) or returns false"

  if [ (__get_char -1) = $left -a (__get_char 0) = $right ]
    commandline -f delete-char backward-delete-char
    return 0
  else
    # commandline -f backward-delete-char
    return 1
  end
end
