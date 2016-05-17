function _pisces_bind_pair -a left right -d "Creates bindings for the given pair: autoclose and remove empty"

    set l $left
    set r $right

    set left (string escape -n -- $left)
    set right (string escape -n -- $right)

    if [ $left = $right ]

        bind $r "_pisces_skip $right; or _pisces_surround '' $right"
    else

        bind $l "_pisces_surround $left $right"
        bind $r "_pisces_skip $right"
    end
end
