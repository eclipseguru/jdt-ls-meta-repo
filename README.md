# Meta Repository for Bazel and Java LS development

## Getting Started
```
# install meta command
npm i -g meta

# clone this repository
meta git clone git@github.com:eclipseguru/jdt-ls-meta-repo.git

# setup dev environment
cd jdt-ls-meta-repo
make setup
```

* The `master` branch represents the latest on all involved repositories.
* The `origin` repository is actually a fork itself so 

A remote `upstream` is setup to point to the upstream repository.

## Development Workflows

### Refresh master from upstream
```
meta git fetch upstream
meta git pull 
```

### Create feature branch
```
meta git checkout -b <username>/feature
```
