# My basic template for rails, tought, maybe too much personal.
# basic.rb

# Delete unnecessary files
run "rm README"
run "rm public/index.html"
run "rm public/favicon.ico"
run "rm public/robots.txt"
run "rm -f public/javascripts/*"


plugin 'annotate-models', 
  :svn => 'http://repo.pragprog.com/svn/Public/plugins/annotate_models/'
plugin 'restful-authentication', 
  :git => 'git://github.com/technoweenie/restful-authentication.git'
plugin 'acts_as_attachment',
  :svn =>'http://svn.techno-weenie.net/projects/plugins/acts_as_attachment/'

gem 'mislav-will_paginate', :version => '~> 2.2.3', 
  :lib => 'will_paginate',  :source => 'http://gems.github.com'

rake("gems:install", :sudo => true)

if yes?("Do you want to include the activation mail feature?")
    generate("authenticated", "user session --include-activation")
else
    generate("authenticated", "user session")
end

file 'app/views/layouts/application.html.erb', 
%q{<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <%= javascript_include_tag :all %>
    <%= stylesheet_link_tag "application" %>
  </head>
  <body>
    <%= yield %>
  </body>
</html>
}

file 'public/stylesheets/application.css', 
%q{
}

generate("controller","home index")

# Integrated newgit.rb
# from Joao Vitor

# Creates a new rails application using git
# Initializes the git based on the sake task published on
# http://gist.github.com/6750
# task 'git:rails:new_app', :needs => [ 'rails:rm_tmp_dirs', 'git:hold_empty_dirs' ]

# rails:rm_tmp_dirs
["./tmp/pids", "./tmp/sessions", "./tmp/sockets", "./tmp/cache"].each do |f|
  run("rmdir ./#{f}")
end

# git:hold_empty_dirs
run("find . \\( -type d -empty \\) -and \\( -not -regex ./\\.git.* \\) -exec touch {}/.gitignore \\;")

# git:rails:new_app
git :init

initializer '.gitignore', <<-CODE
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
CODE

run "cp config/database.yml config/database.yml.sample"

git :add => "."

git :commit => "-a -m 'Setting up a new rails app. Copy config/database.yml.sample to config/database.yml and customize.Applied lucapette basic.rb template'"
