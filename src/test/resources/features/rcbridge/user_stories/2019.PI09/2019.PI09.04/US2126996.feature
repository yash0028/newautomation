# Last updated on 
@US2126996
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationPresent
Feature: US2126996 - Display Market Product Code when resolving multiple

  @TC1022060
  @Manual
  @Functional
  Scenario: TC1022060 - [RL0]
    Given a user has Type 2 errors to resolve
    And the user has clicked the "resolve multiple" button
    When the popup screen is displayed on screen
    Then the data columns will include Name, MPIN, TIN, Market Product Code(s), Retry Count
    And the data column Status will be removed

