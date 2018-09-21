# Last updated on 
@US1098418
@2018.PI03
Feature: US1098418 - Generate the amendment document

  @TC565071
  @Automated
  @Functional
  Scenario: TC565071 - [RL0]
    Given a User has identified target providers
    When applicable documents have been selected
    Then Exari will create a draft version of the amendment documents
    And present the User with a draft version of the amendment documents
    And the User determines if edits are required

