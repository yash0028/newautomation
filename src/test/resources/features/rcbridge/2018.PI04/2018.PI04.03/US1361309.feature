# Last updated on 
@A_UI_Story
@US1361309
@2018.PI04
@2018.PI04.03
@MVP
@Madhur
@Priority_1
@CMD
@F218723
@releasePresent
@iterationPresent
Feature: US1361309 - CMD- Type 2 error parital contract master update NDB/COSMOS

  @TC598298
  @Manual
  @Functional
  @A_UI_Story
  @US1361309
  @2018.PI04
  @2018.PI04.03
  Scenario: TC598298 - [RL0]
    Given I am on on the CMD error page
    When I click on a contract line
    And The contract contains a partial NDB/COSMOS contract master installation error
    Then on the Modal window i can see the error code and in the message the request/response submitted to NDB

