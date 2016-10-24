#Configurations

This repository contains files and documentation for our standard configurations.

##PHP
Project is 'built' using apache ant.
`brew install ant`

###Generating API Documentation
`vendor/bin/phpdoc.php -d src -t documents/api --template=responsive-twig`

###Phinx Migrations
`vendor/bin/phinx create MyNewMigration`<br>
`vendor/bin/phinx migrate -e development`<br>
`vendor/bin/phinx rollback -e development`<br>
<br>


