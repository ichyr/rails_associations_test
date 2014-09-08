Feature: Testing of specializations

	Scenario: Test of index page 
	 	Given I have specializations called "Кінна", "Військова"
    When I go to the list of specializations
    Then I should see "Кінна", "Військова"

	Scenario: Test of creation of specialization
	Scenario: Test of specialization deletion
	Scenario: Test of specialization edition