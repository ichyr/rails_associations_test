Feature: Testing of vmilosti

	Scenario: Test of index page 
	 	Given I have vmilosti called "Кінна", "Військова"
    When I go to the list of specializations
    Then I should see "Кінна", "Військова"

	Scenario: Test of creation of vmilist
	Scenario: Test of vmilist deletion
	Scenario: Test of vmilist edition