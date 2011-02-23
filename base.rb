# base.rb

# delete unnecessary files
run "rm README"
run "rm public/index.html"
run "rm public/favicon.ico"
run "rm public/robots.txt"

gem 'nifty-generators'

gem "will_paginate", '3.0.pre2'

gem 'annotate'

gem 'devise', :git => "http://github.com/plataformatec/devise.git"
