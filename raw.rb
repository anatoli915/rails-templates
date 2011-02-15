# raw.rb template

# delete unnecessary files
run "rm README"
run "rm public/index.html"
run "rm public/favicon.ico"
run "rm public/robots.txt"
run "rm -f public/javascripts/*"

gem 'nifty-generators'

gem "will_paginate", '3.0.pre2'

gem 'annotate'

gem 'thin'

gem("devise")

apply("https://github.com/lucapette/rails-templates/raw/master/git.rb")
