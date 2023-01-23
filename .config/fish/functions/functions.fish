###############
#'!!' and '!$'#
###############

function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end

##############
#Backup Files#
##############

function backup --argument filename
    cp $filename $filename.bak
end

##########################################################
#Check if Given String Starts or Ends with Another String#
##########################################################

function string_ends_with
    string match -i --regex '^.*'"$argv[2]"'$' "$argv[1]" >/dev/null 2>&1
end

function string_starts_with
    string match -i --regex '^'"$argv[2]"'.*$' "$argv[1]" >/dev/null 2>&1
end

#############
#Exit Status#
#############

function __map_exit_status_to_signal_name
    switch "$argv[1]"
        case 125; echo EXEC         # exec error
        case 126; echo EXEC         # not executable
        case 127; echo CNF          # no such command
        case 128; echo EXIT         # exit with signal + signal number
        case 129; echo SIGHUP
        case 130; echo SIGINT
        case 131; echo SIGQUIT
        case 132; echo SIGILL
        case 133; echo SIGTRAP
        case 134; echo SIGABRT
        case 135; echo SIGBUS
        case 136; echo SIGFPE
        case 137; echo SIGKILL
        case 138; echo SIGUSR1
        case 139; echo SIGSEGV
        case 140; echo SIGUSR2
        case 141; echo SIGPIPE
        case 142; echo SIGALRM
        case 143; echo SIGTERM
        case 144; echo SIGSTKFLT
        case 145; echo SIGCHLD
        case 146; echo SIGCONT
        case 147; echo SIGSTOP
        case 148; echo SIGTSTP
        case 149; echo SIGTTIN
        case 150; echo SIGTTOU
        case 151; echo SIGURG
        case 152; echo SIGXCPU
        case 153; echo SIGXFSZ
        case 154; echo SIGVTALRM
        case 155; echo SIGPROF
        case 156; echo SIGWINCH
        case 157; echo SIGIO
        case 158; echo SIGPWR
        case \*; echo "$argv[1]"
    end
end

################################
#Extract Common Archive Formats#
################################

function _extract_help
    echo "usage: extract FILE [FILE ...]"
end

function extract -d "Extract archives"
    if test (count $argv) -lt 1
        _extract_help
        return 1
    end

    set failed false

    for file in $argv
        switch $file
            case '*.tar'
                tar xvf "$file"

            case '*.tar.gz' '*.tgz'
                tar xvzf "$file"

            case '*.tar.bz2' '*.tar.bz' '*.tbz' '*.tbz2'
                tar xvjf "$file"

            case '*.tar.xz' '*.txz'
                tar xvJf "$file"

            case '*.tar.Z' '*.taz'
                tar xvZf "$file"

            case '*.tar.zst' '*.tzst'
                tar --zstd -xvf "$file"

            case '*.tar.lzma' '*.tar.zma' '*.tlz'
                tar --lzma -xvf "$file"

            case '*.tar.lrz'
                lrzuntar "$file"

            case '*.tar.lz'
                tar --lzip -xvf "$file"

            case '*.tar.lz4'
                tar --use-compress-program=lz4 -xvf "$file"

            case '*.tar.lzo'
                tar --lzop -xvf "$file"

            case '*.7z'
                7zz x "$file"

            case '*.gz'
                gunzip --keep "$file"

            case '*.bz2' '*.bz'
                bunzip2 --keep "$file"

            case '*.xz'
                unxz --keep "$file"

            case '*.lrz'
                lrunzip "$file"

            case '*.lz4'
                unlz4 "$file" (string replace --regex '.lz4$' '' "$file")

            case '*.lzma'
                unlzma --keep "$file"

            case '*.zip'
                unzip "$file"

            case '*.Z'
                uncompress --keep "$file"

            case '*.zst'
                unzstd --keep "$file"

            case '*.zz'
                unpigz --keep "$file"

            case '*'
                echo >&2 "extract: failed to extract '$file': no extractor implemented for file type"
                set failed true
        end

        if test $status -ne 0
            echo >&2 "Failed to extract '$file'"
            set failed true
        end
    end

    if $failed
        return 1
    end
end

function x
    extract $argv
end

###################
#Recursive Copying#
###################

function copy
    set count (count $argv | tr -d \n)
    if test "$count" = 2; and test -d "$argv[1]"
	set from (echo $argv[1] | trim-right /)
	set to (echo $argv[2])
        command cp -r $from $to
    else
        command cp $argv
    end
end

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
