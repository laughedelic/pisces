function key_bindings

    set -q pisces_pairs
    # or set -U pisces_pairs '(,)' '[,]' '{,}' '","' "','"
    or set -U pisces_pairs '(,)' '[,]' '{,}' '","' "','"

    # for pair in $pisces_pairs
    #     _pisces_bind_pair (string split ',' $pair)
    # end

    function pattern
        string join \t $argv
    end

    set -q pisces_patterns
    or set -U pisces_patterns \
        (pattern '[^\w\\\]' '[' '\W' '[ ' ' ]') \
        (pattern '[^\w\\\]' '"' '\W'  '"' '"') \
        (pattern '[^\w\\\]' "'" '\W' "'" "'") \
        (pattern 'for|if|switch'  ';'  '\W'  ' '  '; end;')
        # (pattern 'for' ';' '\W' "\n" "\nend")
        # (pattern 'begin'  ';'  '\W'  '; '  '; end;') \

    function _pisces_bind_pattern -a l_ctx trg r_ctx l r
        set lc (string escape -n $l_ctx)
        set rc (string escape -n $r_ctx)

        set l (string escape -n $l)
        set r (string escape -n $r)

        set t (string escape -n $trg)

        bind $trg "_pisces_match $lc $rc; and _pisces_surround $l $r; or commandline -i $t"
    end

    for p in $pisces_patterns
        _pisces_bind_pattern (string split \t $p)
    end

    # normal backspace, also known as \010 or ^H:
    bind \b _pisces_backspace
    # Terminal.app sends DEL code on ⌫:
    bind \177 _pisces_backspace

    # overrides TAB to provide completion of vars before a closing '"'
    bind \t _pisces_complete
end
