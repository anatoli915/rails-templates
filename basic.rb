# basic.rb

apply(File.join(File.dirname(__FILE__),"base.rb"))

if yes?("Would you like to use thin?")
    gem 'thin'
end

if yes?("Do you want me to configure git?")
    apply(File.join(File.dirname(__FILE__),"git.rb"))
end
