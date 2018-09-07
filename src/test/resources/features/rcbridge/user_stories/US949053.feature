# Last updated on 
@MVP
@CLM_UAT
@EXARI-11274
@US949053
@2018.PI03
Feature: US949053 - Check for Duplicate Name

  @TC564459
  @Automated
  @Functional
  Scenario: TC564459 - [RL0]
    Given I am the Entity Management Solution
    When A User adds an Entity
    Then I perform a duplicate check on Entity Name
    And I display duplicates
    And User has ability to override duplicate or select from the potential duplicate list for Entity Name
