set PATH /opt/subversion/bin /usr/local/bin $PATH ~/bin ~/.composer/vendor/bin

# Easier navigation
alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."
alias ..... "cd ../../../.."

# Shortcuts
alias logs "cd /Applications/MAMP/logs"
alias db "cd ~/Dropbox"
alias dl "cd ~/Downloads"
alias dt "cd ~/Desktop"
alias p "cd ~/projects"
alias g "git"
alias h "history"
alias j "jobs"
alias sublime 'open -a "Sublime Text"'
alias compupd 'php /Users/Bieder/projects/composer.phar self-update; and php /Users/Bieder/projects/composer.phar update'
alias generate_entities 'php app/console doctrine:generate:entities KDO'
alias schema_update 'php app/console doctrine:schema:update --force'

# Lock the screen (when going AFK)
alias afk "/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Get week number
alias week 'date +%V'

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update 'sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; cd ~/.composer/; compupd'

# IP addresses
alias ip "dig +short myip.opendns.com @resolver1.opendns.com"
alias localip "ipconfig getifaddr en1"
alias ips "ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Flush Directory Service cache
alias flush "dscacheutil -flushcache | killall -HUP mDNSResponder"

# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias lscleanup "/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user | killall Finder"

# View HTTP traffic
alias sniff "sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump "sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash "sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Show/hide hidden files in Finder
alias show "defaults write com.apple.finder AppleShowAllFiles -bool true | killall Finder"
alias hide "defaults write com.apple.finder AppleShowAllFiles -bool false | killall Finder"

# URL-encode strings
alias urlencode 'python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

alias ls 'ls -GFh'

set fish_greeting ""

function fish_prompt -d "Write out the prompt"
    printf '\n%s%s %s%s%s \n🌀  ' (set_color red) (whoami) (set_color $fish_color_cwd) (pwd) (set_color normal)
end

