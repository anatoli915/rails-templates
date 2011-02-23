# jquery.rb

apply("https://github.com/lucapette/rails-templates/raw/master/base.rb")

# remove defaults
run "rm public/javascripts/controls.js"
run "rm public/javascripts/dragdrop.js"
run "rm public/javascripts/effects.js"
run "rm public/javascripts/prototype.js"

gem 'jquery-rails'

if yes?("Do you want me to configure git?")
    apply("https://github.com/lucapette/rails-templates/raw/master/git.rb")
end
