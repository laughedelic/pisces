function key_bindings

    set -q pisces_pairs
    or set -U pisces_pairs '(,)' '[,]' '{,}' '","' "','"

    for pair in $pisces_pairs
        _pisces_bind_pair (string split -- ',' $pair)
    end

    # normal backspace, also known as \010 or ^H:
    bind \b _pisces_backspace
    # Terminal.app sends DEL code on ⌫:
    bind \177 _pisces_backspace

    # overrides TAB to provide completion of vars before a closing '"'
    bind \t _pisces_complete
end
