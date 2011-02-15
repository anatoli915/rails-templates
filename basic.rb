# basic.rb

apply("https://github.com/lucapette/rails-templates/raw/master/base.rb")

if yes?("Would you like to use thin?")
    gem 'thin'
end

if yes?("Do you want me to configure git?")
    apply("https://github.com/lucapette/rails-templates/raw/master/git.rb")
end
