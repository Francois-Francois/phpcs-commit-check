#!/bin/sh

GIT_DIR=`git rev-parse --show-toplevel`

if [ -e $GIT_DIR/.git/hooks/pre-commit ];
then
    PRE_COMMIT_EXISTS=1
else
    PRE_COMMIT_EXISTS=0
fi

if [ ! -d $GIT_DIR/.git/hooks ]; then
  mkdir -p $GIT_DIR/.git/hooks
fi

cp vendor/rikless/phpcs-commit-check/src/pre-commit $GIT_DIR/.git/hooks/pre-commit
chmod +x $GIT_DIR/.git/hooks/pre-commit

if [ "$PRE_COMMIT_EXISTS" = 0 ];
then
    echo "Pre-commit git hook is installed!"
else
    echo "Pre-commit git hook is updated!"
fi
