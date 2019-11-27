# Last updated on
@US1407217
@releaseUnknown
@iterationUnknown
Feature: US1407217
  @TC624356
  @Manual
  @User_Interface
  Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    
    When I have entered the CMD dashboard URL
    And The dashboard page loads
    #Then I search for Contract
    
    Examples:
      | site          | paperType     | TCName   |
      | central uhn   | SPGA          | demo     |