#!/usr/bin/env bash

# git remote add
echo -e "\n[git remote add ...]"
git remote add private-sync git@github.com:iLib-js/flutter_ilib_webos.git

# git sync with public flutter_ilib main(release) branch
git reset --hard
git checkout main
git fetch origin 
git rebase remotes/origin/main

echo -e "\n[sync branch ...]"
git push private-sync HEAD:public/sync

# sync tag
echo -e "\n[tags ...]"
git for-each-ref --format="%(refname:short) %(objectname)" refs/tags |
while read ref
do
        values=($ref)
        echo "tags ${values[0]}"
        #git tag -a ${values[0]} -m 'import tag from sf tag ${values[0]}' ${values[1]}
done
 
# upload tag to flutter_ilib_webos
echo -e "\n[sync tag ...]"
git push --tags private-sync

echo -e "\n[git remote remove ...]"
git remote remove private-sync