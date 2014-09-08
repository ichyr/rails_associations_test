Given(/^I have instruktory called (.*?)$/) do |list|
  list.tr('"','').split(", ").each { |entity| 
  	Instruktor.create! name: entity
  }
end

Given(/^I am on instruktory list page$/) do
  visit "/instruktors"
end

When(/^I fill in instruktor name with (.*?)$/) do |arg1|
  fill_in "instruktor[name]", :with => arg1.tr('"','')
end
