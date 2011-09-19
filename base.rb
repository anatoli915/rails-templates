# base.rb

# delete unnecessary files
run 'rm README'
run 'rm public/index.html'
run 'rm public/favicon.ico'
run 'rm public/robots.txt'

gem('rspec-rails', :group => [:development, :test])

gem('capybara', :group => [:development, :test])

gem('nifty-generators', :group => :development)

gem('kaminari')

gem('annotate')

gem('simple_form')

gem('devise')

gem 'thin'

if yes?("Do you want an additional locale?")
  locale=ask("which?")
  get("https://github.com/svenfuchs/rails-i18n/raw/master/rails/locale/#{locale}.yml","config/locales/#{locale}.yml")
end

run "bundle install"

generate('rspec:install')

generate('nifty:layout')

generate('devise:install')

generate('devise:views')

generate('controller welcome index')

route('root :to => "welcome#index"')
