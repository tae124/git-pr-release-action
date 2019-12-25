#!/bin/sh

set -eu
export GIT_PR_RELEASE_TOKEN=$GITHUB_TOKEN
export TZ=$TZ
git clone https://$GITHUB_TOKEN:x-oauth-basic@github.com/$GITHUB_REPOSITORY.git
cd `echo ${GITHUB_REPOSITORY} | sed -n 's/^\(.*\)\/\(.*\)$/\2/p'`
git remote set-url origin https://$GITHUB_TOKEN:x-oauth-basic@github.com/$GITHUB_REPOSITORY.git
git-pr-release --no-fetch
