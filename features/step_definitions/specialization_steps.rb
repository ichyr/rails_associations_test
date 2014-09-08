Given(/^I have vmilosti called (.*?)$/) do |list|
  list = list.split(", ")
  list.each { |entity| 
  	Vmilist.create name: entity
  }
end

When(/^I go to the list of specializations$/) do
  visit "/vmilists"
end

Then(/^I should see (.*?)$/) do |data|
  data.split(", ").each { |text|
  	expect(page).to have_text text
  }
end
