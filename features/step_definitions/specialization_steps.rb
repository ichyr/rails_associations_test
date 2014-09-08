Given(/^I have specializations called: (.*?)$/) do |list|
  list = list.split(", ")
  list.each { |entity| 
  	Specializations.create name: entity
  }
end

When(/^I go to the list of specializations$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)", "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end
