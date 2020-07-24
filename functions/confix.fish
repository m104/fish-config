function confix
    $EDITOR (git diff --name-only | uniq)
end
