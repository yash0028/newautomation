@PG
Feature: Playground

  @User_Interface
  Scenario Outline: TC624355 - [RL0] Author SPA contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    Then I do something
    Examples:
      | site        | mpin    | tin       | market number | phycon | fee      | county |
      | central uhn | 2239924 | 731624480 | 13476         | 1234   | IN 52716 | clay   |
