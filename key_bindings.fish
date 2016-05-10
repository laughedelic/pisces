function key_bindings

    set -q pisces_pairs
    or set -U pisces_pairs '(,)' '[,]' '{,}' '","' "','"

    for pair in $pisces_pairs
        _pisces_bind_pair (string split ',' $pair)
    end

    bind \b _pisces_backspace
end
