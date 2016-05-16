function _pisces_surround -a left right -d "Inserts a pair of strings and puts the cursor between them"

    commandline --insert "$left$right"
    and _pisces_jump -(string length $right)
end
