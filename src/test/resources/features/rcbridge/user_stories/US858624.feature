# Last updated on 
@MVP
@EXARI-11273
@US858624
@2018.PI03
Feature: US858624 - Capture Entity Characteristic Time Lining History

  @TC564766
  @Automated
  @Functional
  Scenario: TC564766 - [RL0]
    Given I am the Entity Management Solution
    When a User adds characteristic detail to an Entity
    And a User updates characteristic detail on an Entity
    And a User inactivates characteristic detail on an Entity
    Then I capture the previous value
    And I capture the current value
    And I capture the User who performed the change
    And I capture the date and time when the User performed the change

