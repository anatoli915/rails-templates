# raw.rb

# delete unnecessary files
run "rm README"
run "rm public/index.html"
run "rm public/favicon.ico"
run "rm public/robots.txt"
run "rm -f public/javascripts/*"

gem 'nifty-generators'

gem 'kaminari'

gem 'annotate'

gem 'thin'

apply("https://github.com/lucapette/rails-templates/raw/master/git.rb")
