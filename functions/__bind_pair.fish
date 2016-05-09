function __bind_pair \
  -a left right \
  -d "Creates bindings for the given pair: autoclose and remove empty"

  set l $left
  set r $right

  set left  (string escape -n $left)
  set right (string escape -n $right)

  if [ $left = $right ]

    bind $r "__cursor_skip_text $right; or __cursor_append_text $right"
  else # if $some_special_setting

    bind $l "commandline -i $left; and __cursor_append_text $right"
    bind $r "__cursor_skip_text $right"
  end
end
