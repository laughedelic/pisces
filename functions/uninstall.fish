function uninstall -d "Erases created key bindings and unsets the var"

    for pair in $pisces_pairs
        for c in (string split ',' $pair)
            bind -e $c
        end
    end

    bind \b backward-delete-char

    set -e pisces_pairs
end
