require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.register_driver :selenium do |app| 
   profile = Selenium::WebDriver::Firefox::Profile.new 
   Capybara::Selenium::Driver.new( app, :browser => :firefox, :profile => profile ) 
end

Capybara.default_driver = :selenium