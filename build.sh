#!/bin/bash

# git worktree prune
# git worktree add /tmp/book gh-pages
# mdbook build
# rm -rf /tmp/book/* # this won't delete the .git directory
# cp -rp book/* /tmp/book/
# cd /tmp/book
# git update-ref -d refs/heads/gh-pages
# git add -A
# git commit -m 'deploy new book'
# git push --force origin gh-pages
# cd -

git worktree add --orphan -B gh-pages gh-pages
cp -r book/ gh-pages
git config user.name "CI"
git config user.email ""
cd gh-pages
git add -A
git commit -m "deploy new book"
git push origin +gh-pages
cd ..