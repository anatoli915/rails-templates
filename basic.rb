# basic.rb

apply(File.join(File.dirname(__FILE__),"base.rb"))

if yes?("Do you want an additional locale?")
  locale=ask("which?")
  get("https://github.com/svenfuchs/rails-i18n/raw/master/rails/locale/#{locale}.yml","config/locales/#{locale}.yml")
end

if yes?("Would you like to use thin?")
  gem 'thin'
end

if yes?("Do you want me to configure git?")
  apply(File.join(File.dirname(__FILE__),"git.rb"))
end
