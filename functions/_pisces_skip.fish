function _pisces_skip -a text -d "Skips given text if it's already under the cursor"

    set length (string length -- $text)

    if [ (_pisces_lookup 0 $length) = $text ]
        _pisces_jump $length
        return 0
    else
        commandline -i -- $text
        return 1
    end
end
