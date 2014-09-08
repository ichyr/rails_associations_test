Given(/^I have vmilosti called (.*?)$/) do |list|
  list.tr('"','').split(", ").each { |entity| 
  	Vmilist.create! name: entity
  }
end

Given(/^I am on vmilosti list page$/) do
  visit "/vmilists"
end

When(/^I fill in vmilist name with (.*?)$/) do |arg1|
  fill_in "vmilist[name]", :with => arg1.tr('"','')
end
