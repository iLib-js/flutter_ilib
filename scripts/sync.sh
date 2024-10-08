#!/usr/bin/env bash

# git sync with public flutter_ilib main(release) branch
git reset --hard
git checkout main
git rebase remotes/origin/main

# git remote add
echo -e "\n[git remote add ...]"
git remote add sync-private git@github.com:iLib-js/flutter_ilib_webos.git

echo -e "\n[sync branch ...]"
git push sync-private HEAD:public/sync

# sync tag
echo -e "\n[tags ...]"
git for-each-ref --format="%(refname:short) %(objectname)" refs/tags |
while read ref
do
        values=($ref)
        echo "tags ${values[0]}"
done
 
# upload tag to flutter_ilib_webos
echo -e "\n[sync tag ...]"
git push --tags sync-private