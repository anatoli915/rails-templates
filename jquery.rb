# jquery.rb

apply(File.join(File.dirname(__FILE__), "base.rb"))

# remove defaults
run "rm public/javascripts/controls.js"
run "rm public/javascripts/dragdrop.js"
run "rm public/javascripts/effects.js"
run "rm public/javascripts/prototype.js"

gem 'jquery-rails'

if yes?("Do you want me to configure git?")
  apply(File.join(File.dirname(__FILE__), "git.rb"))
end
