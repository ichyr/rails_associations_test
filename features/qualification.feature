Feature: Testing of qualifications

  Scenario: New qualification page
    Given I am on qualifications page
    And I have vmilist "Їзда верхи", "Догляд за дітьми"
    And I have instruktors "Василь", "Михайло"
    Then I look at vmilist combobox I have options "Їзда верхи", "Догляд за дітьми"
    And I look at vmilist combobox I have options "Василь", "Михайло"

  Scenario: New qualification page - ajax response
    Given I am on qualifications page
    And I have instruktors "Василь", "Михайло","a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"
    When And I type in "Foo" into autocomplete list "input_id" and I choose "o"
    Then I see in autocomplete list "input_id" text "o"