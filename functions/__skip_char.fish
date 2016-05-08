function __skip_char \
  -a char \
  -d "Skips given char if it's already under the cursor"

  if [ (__get_char 0) = $char ]
    __move_cursor 1
    return 0
  else
    commandline -i $char
    return 1
  end
end
