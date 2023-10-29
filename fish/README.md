### Extra Function
Note that I have added an extra function to fish off of the internet, which incorporates
functionality from bash that I find incredibly useful.
<br />
The function simply inplements 'sudo !!' --> i.e. it repeats the previous command, but with sudo.
<br />

Here is the code for the function:
```
function sudo --description "Replacement for Bash 'sudo !!' command to run last command using sudo."
    if test "$argv" = !!
        echo sudo $history[1]
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end
```
Simply copy and paste this into the commandline to implement this function.
<br />
[Source](https://unix.stackexchange.com/questions/235704/fish-sudo-command-not-found)
