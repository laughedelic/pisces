for pair in $pisces_pairs
    for c in (string split -- ',' $pair)
        bind -e $c
    end
end

bind \b   backward-delete-char
bind \177 backward-delete-char
bind \t   complete

set -e pisces_pairs

# TODO:
# eval $__fish_active_key_bindings
# fish_user_key_bindings
