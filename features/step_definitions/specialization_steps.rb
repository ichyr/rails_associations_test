Given(/^I have vmilosti called (.*?)$/) do |list|
  list.tr('"','').split(", ").each { |entity| 
  	Vmilist.create name: entity
  }
end


Then(/^I should see (.*?)$/) do |data|
  data.tr('"','').split(", ").each { |text|
  	expect(page).to have_text text
  }
end

Given(/^I am on vmilosti list page$/) do
  visit "/vmilists"
end

Given(/^I click on link "(.*?)"$/) do |arg1|
  click_link arg1
end

When(/^I click on button "(.*?)"$/) do |arg1|
  click_button arg1
end

When(/^I fill in vmilist name with (.*?)$/) do |arg1|
  fill_in "vmilist[name]", :with => arg1
end
