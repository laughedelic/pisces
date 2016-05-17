function _pisces_bind_pair -a mode left right -d "Creates bindings for the given pair: autoclose and skip closing symbol"

    test -n $mode
    or set mode default

    set l $left
    set r $right

    set left  (string escape -n -- $left)
    set right (string escape -n -- $right)

    if [ $left = $right ]

        bind -M $mode $r "_pisces_skip $right; or _pisces_append $right"
    else

        bind -M $mode $l "commandline -i -- $left; and _pisces_append $right"
        bind -M $mode $r "_pisces_skip $right"
    end
end
