set -e

if ! git ls-remote heroku; then
  echo "Adding heroku remote..."
  heroku git:remote -a raydo-qa
#  git remote add heroku git@heroku.com:/raydo-qa.git
fi

heroku maintenance:on --app raydo-qa
#push to heroku
git push --force heroku origin/develop:master
heroku run rake db:migrate --app raydo-qa
#enables
heroku maintenance:off --app raydo-qa
