# base.rb

# delete unnecessary files
run "rm README"
run "rm public/index.html"
run "rm public/favicon.ico"
run "rm public/robots.txt"
run "rm -f public/javascripts/*"

gem 'nifty-generators'

gem "will_paginate", '3.0.pre2'

gem 'annotate'

generate("nifty:layout")
