# Last updated on 
@US1098423
@2018.PI03
Feature: US1098423 - Select amendment from list of applicable document

  @TC564749
  @Automated
  @Functional
  Scenario: TC564749 - [RL0]
    Given the User has defined the intent of the Mass Action Project
    When the User has identified the target providers
    Then Exari will display the applicable documents for the Mass Action Project
    And the User will be able to select one or more documents

