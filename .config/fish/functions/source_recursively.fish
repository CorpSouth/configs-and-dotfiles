#######################################################
#Sources All .fish Scripts in an Entire Directory Tree#
#######################################################

function source-recursive
    if [ -d "$argv[1]" ]
        for file in (find "$argv[1]" -type f -iname '*.fish')
            source "$file"
        end
    end
end
