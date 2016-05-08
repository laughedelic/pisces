function __insert_pair \
  -a left right \
  -d "Inserts a pair of strings (left-right) and puts the cursor between them"

  commandline -i "$left$right"
  __move_cursor -(string length $right)
end
