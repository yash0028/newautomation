@PG
Feature: Playground

  @User_Interface
  @parametric_browser
  Scenario Outline: TC624355 - [RL0] Author SPA contract in <site>
    Given I am using a parametric browser with the following capabilities
      | browserName | <browserName> |
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    Then I do something
    Examples:
      | site        | browserName |
      | central uhn | chrome      |
      | central uhn | firefox     |

  @PG123
  Scenario: Playground
    Then I activate the hive
