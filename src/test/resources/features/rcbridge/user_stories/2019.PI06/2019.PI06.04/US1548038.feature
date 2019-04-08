# Last updated on 
@Shiva
@US1548038
@2019.PI06
@2019.PI06.04
@releasePresent
@iterationPast
Feature: US1548038 - Test Alfresco Time Out

  @TC709182
  @Manual
  @Functional
  @Shiva
  Scenario: TC709182 - [RL0]
    Given User is working in Activity Manager
    When they've been in Activity Manager working for more than 30 minutes
    Then they can click on the 'hamburger' menu in the upper right
    And Exari Contracts opens with the user still signed in

  @TC758899
  @Manual
  @Functional
  @Shiva
  Scenario: TC758899 - [RL1]
    Given User is working in Activity Manager
    When they've let Activity Manager be idle for more than 30 minutes
    Then they are logged out

