change-shell () {
    shell_name=$1
    shell_bin=$(which $shell_name)
    if [[ $? != 0 ]]; then
        echo "No shell matching that name"
    else
        read "response?Found shell at $shell_bin. Do you want to change to it? [Y/n]"
        if [[ $response =~ ^[Yy]$ ]]
        then
            chsh -s $shell_bin
        else
            echo "abort"
        fi
    fi
}

open-shell () {
    shell_name=$1
    shell_bin=$(which $shell_name)
    if [[ $? != 0 ]]; then
        echo "No shell matching that name"
    else
        read "response?Found shell at $shell_bin. Do you want to run it? [Y/n]"
        if [[ $response =~ ^[Yy]$ ]]
        then
            $shell_bin
        else
            echo "abort"
        fi
    fi
}