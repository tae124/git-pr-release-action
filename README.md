# git-pr-release-action

GitHub Action to run [git-pr-release](https://github.com/motemen/git-pr-release)

### Usage

For example, here is a workflow to run `git-pr-release` when push to develop.

```
name: Exec git-pr-release
on:
  push:
    branches:
      - develop
jobs:
  gitPrRelease:
    name: git-pr-release
    runs-on: ubuntu-latest
    steps:
    - name: git-pr-release
      uses: tae124/git-pr-release-action@master
      env:
        GIT_PR_RELEASE_BRANCH_STAGING: develop
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN_GIT_PR_RELEASE }}
```

or see `.github/workflows` of this repository.

### Environment variables

#### `GITHUB_TOKEN_GIT_PR_RELEASE` (required)

Add [GITHUB_TOKEN secret](https://help.github.com/en/articles/virtual-environments-for-github-actions#github_token-secret) to make authenticated calls to the GitHub API.

#### Other optional environment variables

Any environment variables defined by [git-pr-release](https://github.com/motemen/git-pr-release) also can use on this action (`GIT_PR_RELEASE_BRANCH_PRODUCTION`, `GIT_PR_RELEASE_BRANCH_STAGING` etc).
