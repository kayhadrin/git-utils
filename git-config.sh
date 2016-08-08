##############################
# Git configuration script to achieve about the same config as .gitconfig
# TODO Update it to .gitconfig
##############################

# always push only the current branch
git config --global push.default current
 
# always do non-fast forward merges
# it gives more clarity to commit graphs after each merge
git config --global merge.ff false
 
# save all text files with LF (instead of letting git make guesses like CRLF, LF per OS type)
# helps us reduce minor file diff mismatches
git config --global core.autocrlf input
 
git config --global color.ui auto
 
# Remember your git credentials when authenticating in command-line
# Requires msysgit 1.8.1+
# For earlier versions, check on Stackoverflow: http://stackoverflow.com/a/14000482/104598
git config --global credential.helper wincred
 
# disable ssl verification for HTTPS so that we can use https on github 
# git config --global http.sslCAInfo "C:/some/ssl/certs/custom-certs.crt"

# Enable git client to store and checkout repositories that contain long file paths (>256) on Windows
# Requires git v1.9.4+
git config --global core.longpaths true
 
# Aliases
# nice git log views
git config --global alias.gl "log --graph --decorate --oneline"
git config --global alias.lg1 "log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold magenta)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'"
git config --global alias.lg2 "log --graph --abbrev-commit --decorate --format=format:'%C(bold magenta)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"
git config --global alias.lg '!'"git lg2"
# an alias to get the git repo root folder
git config --global alias.show-root-folder "rev-parse --show-toplevel"
# show git logs in one vertical view (no graph)
git config --global alias.one "log --pretty=oneline --abbrev-commit"
# Show git commit graph with gitk
# Very useful to find the change history of a single file
# because it keeps merge commits that impacted a given file path.
# @note $GIT_PREFIX is needed to go to the current directory of the script caller
git config --global alias.history '!''cd "$GIT_PREFIX" && gitk --simplify-merges'
 
# shortcuts for common git commands
git config --global alias.a "add"
git config --global alias.c "commit"
git config --global alias.ca "commit --amend"
git config --global alias.ci "commit -a"
git config --global alias.co "checkout"
git config --global alias.d "diff"
git config --global alias.dc "diff --changed"
git config --global alias.ds "diff --staged"
git config --global alias.f "fetch"
git config --global alias.s "status"
# fetch and prune
git config --global alias.fp "fetch -p"
git config --global alias.pf "pull --ff"
git config --global alias.m "merge"
