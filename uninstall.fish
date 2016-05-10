for pair in $pisces_pairs
    for c in (string split ',' $pair)
        bind -e $c
    end
end

# this doesn't really work "/
bind \b backward-delete-char

set -e pisces_pairs
