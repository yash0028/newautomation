# Last updated on 
@US1361309
@2018.PI04
@2018.PI04.03
@MVP
@Madhur
@Priority_1
@CMD
@F218723
Feature: US1361309 - CMD- Type 2 error parital contract master update NDB/COSMOS

  @TC598298
  @Manual
  @Functional
  @US1361309
  @2018.PI04
  @2018.PI04.03
  Scenario: TC598298 - [RL0]
    Given A contract master update was initiated to NDB
    When The response contained an error response
    Then I can see the request/response on the CMD error page

