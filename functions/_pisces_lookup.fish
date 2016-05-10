function _pisces_lookup -a pos len -d "Returns the text at the given position relative to the cursor"

    test -z $pos
    and set pos 0
    test -z $len
    and set len 1

    set cur (commandline -C)
    set input (commandline -b)

    string sub --start (math "$cur + $pos + 1") --length $len "$input" # important to quote it, because it may have newlines
end
