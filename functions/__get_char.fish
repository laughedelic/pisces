function __get_char \
  -a pos \
  -d "Returns the character at the given position relative to the cursor"

  test -z $pos; and set pos 0

  set current (commandline -C)
  string sub --start (math "$current + $pos + 1") --length 1 (commandline -b)
end
