#!/usr/bin/env bash

set -e

# origin/develop:master

app=$1
target=$2

remote=heroku

echo "App $app"
echo "Tagret $target"

function maintenance_on()
{
    heroku maintenance:on --app $app
}

function maintenance_off()
{
    heroku maintenance:off --app $app
}

if ! git remote | grep faraway > /dev/null; then
  echo "Adding heroku remote..."
  heroku git:remote -a $app
fi

maintenance_on

#push to heroku

echo "Pushing $target to $remote.."

git push --force $remote $target

echo "Running database migration.."

heroku run rake db:migrate --app $app

maintenance_off
