# Last updated on 
@MVP
@Parity
@F185547
Feature: F185547 - Create the project documents for a Mass Action Project

  @US1098423
  @2018.PI03
  Scenario: US1098423 - Select amendment from list of applicable document
    Given the User has defined the intent of the Mass Action Project
    When the User has identified the target providers
    Then Exari will display the applicable documents for the Mass Action Project
    And the User will be able to select one or more documents

  @US1100186
  @2018.PI03
  Scenario: US1100186 - Edit the amendment document
    Given the amendment document has been generated
    When the User determines edits are required
    Then Exari allows Acceptable Edits to occur
    And presents the User with the refined document
    And the User determines if Edits are required

  @US1098418
  @2018.PI03
  Scenario: US1098418 - Generate the amendment document
    Given a User has identified target providers
    When applicable documents have been selected
    Then Exari will create a draft version of the amendment documents
    And present the User with a draft version of the amendment documents
    And the User determines if edits are required

