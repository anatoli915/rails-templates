# basic.rb template

apply("https://github.com/lucapette/rails-templates/raw/master/base.rb")

if yes?("Would you like to use thin?")
    gem 'thin'
end

if yes?("Would you like to install Devise?")
    gem("devise")
end

rake("rails g nifty:layout")

if yes?("Do you want me to configure git?")
    apply("https://github.com/lucapette/rails-templates/raw/master/git.rb")
end
