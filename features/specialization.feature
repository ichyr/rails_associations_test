Feature: Testing of vmilosti

	Scenario: Test of index page 
	 	Given I have vmilosti called "Кінна", "Військова"
    When I am on vmilosti list page
    Then I should see "Кінна", "Військова"

	Scenario: Test of creation of vmilist
		Given I am on vmilosti list page
		And I click on link "New Vmilist"
    When I fill in vmilist name with "Таркаси"
    And I click on button "Create Vmilist"
    And I am on vmilosti list page
    Then I should see "Таркаси"

	Scenario: Test of vmilist deletion
		Given I have vmilosti called "Кінна"
		And I am on vmilosti list page
    When I click on link "Destroy"
    Then I should not see "Кінна"

	Scenario: Test of vmilist edition
		Given I have vmilosti called "Кінна"
		And I am on vmilosti list page
    When I click on link "Edit"
    And I fill in vmilist name with "Змінена назва"
    And I click on button "Update Vmilist"
    Then I am on vmilosti list page
    And I should see "Змінена назва"