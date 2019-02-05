# Last updated on 
@US1548038
@2019.PI06
@2019.PI06.02
@releaseFuture
@iterationFuture
Feature: US1548038 - Test Alfresco Time Out

  @TC709182
  @Manual
  @Functional
  Scenario: TC709182 - [RL0]
    Given User is working in Activity Manager
    When they've be in Activity Manager for more than 30 minutes
    Then they can click on the 'hamburger' menu in the upper right
    And Exari Contracts opens with the user still signed in

