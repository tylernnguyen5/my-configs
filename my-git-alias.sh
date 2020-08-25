#!/bin/bash
# My git aliases
git config --global alias.alias "! git config --get-regexp ^alias\. | sed -e s/^alias\.// -e s/\ /\ =\ /"
git config --global alias.ca "! git add -A && git commit -m "
git config --global alias.c "! git commit -m "
git config --global alias.amend " ! git add -A && git commit --amend --no-edit && echo \"\nAmended to the last commit, without editing the commit message\""
git config --global alias.p "! git push origin \$(git rev-parse --abbrev-ref HEAD) && echo \"\nPushed to the current remote branch\""
git config --global alias.f "! git fetch --all && git rebase origin/master && echo \"Synced with the remote\""
git config --global alias.n "! git checkout -b "
git config --global alias.graph "! git log --graph --all --pretty --oneline"
git config --global alias.s status
git config --global alias.standup "! git log --all --author=\$USER --since='9am yesterday' --format=%s"
git config --global alias.l1 "! git log --oneline"
git config --global alias.co checkout
git config --global alias.kickstart "! git init && touch README.md && git add . && git commit -m \"Initial commit\""
git config --global alias.norigin "! git remote add origin "
git config --global alias.stsh "! git stash --keep-index"
git config --global alias.staash "! git stash --include-untracked"
git config --global alias.staaash "! git stash --all"
