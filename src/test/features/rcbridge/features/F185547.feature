# Last updated on 2018-06-07T18:06:22.488Z
@MVP
@Priority_1
@Parity
Feature: F185547 - Create the project documents for a Mass Action Project

  @2018.PI03
  Scenario: US1098423
    Given the User has defined the intent of the Mass Action Project
    When the User has identified the target providers
    Then Exari will display the applicable documents for the Mass Action Project
    Then And the User will be able to select one or more documents

  @2018.PI03
  Scenario: US1100186
    Given the amendment document has been generated
    When the User determines edits are required
    Then Exari allows Acceptable Edits to occur
    Then And presents the User with the refined document
    Then And the User determines if Edits are required

  @2018.PI03
  Scenario: US1098418
    Given a User has identified target providers
    When applicable documents have been selected
    Then Exari will create a draft version of the amendment documents
    Then And present the User with a draft version of the amendment documents
    Then And the User determines if edits are required

