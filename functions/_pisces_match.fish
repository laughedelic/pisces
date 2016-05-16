function _pisces_match -a l_ctx r_ctx -d "Matches the context around the cursor with the given patterns (returns true/false)"

    set buffer (commandline -b)
    set cur (commandline -C)

    set left  (string sub -l "$cur" "$buffer")
    set right (string sub -s (math "$cur + 1") "$buffer")

    string match -q -r $l_ctx'$' " $left"
    and \
    string match -q -r '^'$r_ctx "$right "
end
