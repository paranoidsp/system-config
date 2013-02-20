alias rmlck='sudo rm /var/lib/apt/lists/lock'
alias cardstat="cat /proc/acpi/bbswitch"
alias cardon="sudo tee /proc/acpi/bbswitch <<<ON"
alias cardoff="sudo tee /proc/acpi/bbswitch <<<OFF"
alias lns="ln -s"
alias rmlockarch="rm /var/lib/pacman/db.lck"
alias ..="cd .."
#if [$UID -ne 0 ]; then 
alias reboot='sudo reboot'
alias update='sudo apt-get update'
alias aginstall='sudo apt-get install'
alias mount='sudo mount'
#fi
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias svim="sudo vim"
alias hibernate='sudo pm-hibernate'
