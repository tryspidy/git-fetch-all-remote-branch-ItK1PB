# track all remote branches:
git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#origin/}" "$remote"; done
# update all local copies of remote branches
git fetch --all
# update all local tracking branches
git pull --all
