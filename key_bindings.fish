function key_bindings

    for pair in $pisces_pairs
        _pisces_bind_pair (string split ',' $pair)
    end

    bind \b _pisces_backspace
end
