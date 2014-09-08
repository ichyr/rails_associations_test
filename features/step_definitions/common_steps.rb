Then(/^I should see (.*?)$/) do |data|
  data.tr('"','').split(", ").each { |text|
  	expect(page).to have_text text
  }
end

Then(/^I should not see (.*?)$/) do |data|
  data.tr('"','').split(", ").each { |text|
  	expect(page).not_to have_text text
  }
end


Given(/^I click on link "(.*?)"$/) do |arg1|
  click_link arg1
end

When(/^I confirm dialog box$/) do
  page.driver.browser.switch_to.alert.accept
end


When(/^I click on button "(.*?)"$/) do |arg1|
  click_button arg1
end
