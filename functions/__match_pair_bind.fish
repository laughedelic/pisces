function __match_pair_bind -a k pair

  function __move_cursor -a n
    test -z $n; and set n "-1"
    commandline -C (math (commandline -C)" + $n")
  end

  function __insert_pair -a str n
    commandline -i $str
    __move_cursor $n
  end

  bind $k "__insert_pair '$pair'"
end
