function _pisces_backspace -d "Overrides backspace to handle empty pairs removal"

    for pair in $pisces_pairs
        _pisces_remove (string split -- ',' $pair)
        and return 0
    end

    commandline -f backward-delete-char
end
