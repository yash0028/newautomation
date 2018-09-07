# Last updated on 
@MVP
@CLM_UAT
@EXARI-11274
@US1080995
@2018.PI03
Feature: US1080995 - Check for Duplicates - Updated Entity Name

  @TC565040
  @Automated
  @Functional
  Scenario: TC565040 - [RL0]
    Given I am the Entity Management Solution
    When A User updates an Entity Name
    Then I perform a duplicate check on Entity Name
    And I display duplicates
    And User has ability to override duplicate or select from the potential duplicate list
