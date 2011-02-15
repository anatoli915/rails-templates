# basic.rb

# Delete unnecessary files
run "rm README"
run "rm public/index.html"
run "rm public/favicon.ico"
run "rm public/robots.txt"
run "rm -f public/javascripts/*"

gem 'nifty-generators'

gem "will_paginate", '3.0.pre2'

gem 'annotate'

gem 'thin'

if yes?("Would you like to install Devise?")
  gem("devise")
  model_name = ask("How would you like to calll the user model? [user]")
  model_name = "user" if model_name.blank?
  generate("devise:install")
  generate("devise", model_name)
end

if yes?("Do you want me to configure git?")
    apply("https://github.com/lucapette/rails-templates/raw/master/git.rb")
end
