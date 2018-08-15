# Last updated on 
@CLM_UAT
@MSG
@US1050707
@2018.PI03
Feature: US1050707 - (MSG) Create microservice exposing Market Strategy grid data

  @TC515080
  @Automated
  @Acceptance
  Scenario: TC515080 - MSG Microservice Acceptance Test
    # As a consumer of MSG data
    Given I have the ability to read the MS Access DB
    When I make a request to the microservice to read a record
    Then I receive data that I would get from reading MS Access directly

