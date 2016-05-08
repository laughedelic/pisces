function __move_cursor \
  -a n \
  -d "Moves cursor '+n/-n' positions "

  test -z $n; and set n 0

  set current (commandline -C)
  commandline -C (math "$current + $n")
end
