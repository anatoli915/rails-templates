# git.rb

initializer '.gitignore', <<-GITIGNORE
log/\\*.log
log/\\*.pid
db/\\*.db
db/\\*.sqlite3
db/schema.rb
tmp/\\*\\*/\\*
.DS_Store
doc/api
doc/app
config/database.yml
GITIGNORE

run "cp config/database.yml config/database.yml.example"

git :init
git :add => "."

git :commit => "-a -m 'Setting up a new rails app.'"
