Feature: Testing of instruktors

  Scenario: Test of index page 
    Given I have instruktory called "Василь", "Петро"
    When I am on instruktory list page
    Then I should see "Василь", "Петро"

  Scenario: Test of creation of instruktor
    Given I am on instruktory list page
    And I click on link "New Instruktor"
    When I fill in instruktor name with "Тарас"
    And I click on button "Create Instruktor"
    And I am on instruktory list page
    Then I should see "Тарас"


  Scenario: Test of instruktor deletion
    Given I have instruktory called "Василь"
    And I am on instruktory list page
    When I click on link "Destroy"
    And I confirm dialog box
    Then I should not see "Василь"

  Scenario: Test of instruktor edition
    Given I have instruktory called "Василь"
    And I am on instruktory list page
    When I click on link "Edit"
    And I fill in instruktor name with "Змінене ймення"
    And I click on button "Update Instruktor"
    Then I am on instruktory list page
    And I should see "Змінене ймення"