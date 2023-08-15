##########################################################
#Check if Given String Starts or Ends with Another String#
##########################################################

function string_ends_with
    string match -i --regex '^.*'"$argv[2]"'$' "$argv[1]" >/dev/null 2>&1
end

function string_starts_with
    string match -i --regex '^'"$argv[2]"'.*$' "$argv[1]" >/dev/null 2>&1
end
