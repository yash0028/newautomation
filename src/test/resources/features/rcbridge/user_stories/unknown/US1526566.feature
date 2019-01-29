# Last updated on 
@zuul-gateway-service
@US1526566
@N/A
@releaseUnknown
@iterationUnknown
Feature: US1526566 - Create Zuul Gateway Service

  @TC695694
  @Manual
  @Functional
  @zuul-gateway-service
  Scenario: TC695694 - [RL0]
    Given a valid NDB request from the ndb-updater-service
    When a request is made to the zuul-gateway-service at endpoint "/ndb"
    Then the response contains a valid NDB response

  @TC695696
  @Manual
  @Functional
  @zuul-gateway-service
  Scenario: TC695696 - [RL1]
    Given a valid COSMOS request from the cosmos-updater-service
    When a request is made to the zuul-gateway-service at endpoint "/cosmos"
    Then the response contains a valid COSMOS response

