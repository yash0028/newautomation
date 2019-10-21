@PG1234
Feature: Playground

  @User_Interface
  @parametric_browser
  Scenario Outline: TC624355 - [RL0] Author SPA contract in <site>
    Given I am using a parametric browser with the following capabilities
      | browserName | <browserName> |
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    Then I do something2
    Examples:
      | site        | browserName |
      | central uhn | chrome      |
      | central uhn | firefox     |

  @PG
  @User_Interface
  Scenario: Playground
    Then I do something

  Scenario: Playground
    Given the user has opened a Mass Action Project which has resulted in Type 1 errors
    And the user opened the edit modal for a transaction record
    When the user clicks "apply to multiple transaction"
    And the user selects one or more of the checkboxes and submits the edit
    Then the contract master will be applied to the selected transactions

#####

    Given the user has opened a Mass Action Project which has resulted in Type 1 errors
    And the user opened the edit modal for a transaction record
    When the user clicks "apply to multiple transaction"
    And the user clicks the select all button
    Then all the transactions will be selected
    And the use can deselect
    And the contract master will be applied to the selected transactions


    Given a Mass Action Project has resulted in Type 1 errors
    When a user navigates into the Action Required section from the 4-blocker
    And the user wants to select all targets that errored
    Then the user will see an option/button to "select all" 
    And "select all" will check/select all of the transaction/targets within the error bucket (e.g. Contract Master Override) for the engaged Mass Action Project
    And the user should not have to click select all on each page of results
    And the user will not need to select targets individually
    And the user can deselect targets individually
    And the user can select targets individually
