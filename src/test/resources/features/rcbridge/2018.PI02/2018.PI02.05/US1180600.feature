# Last updated on 
@US1180600
@2018.PI02
@2018.PI02.05
@MVP
@PI02_Top3
@Plus
@Parity
@releasePast
@iterationPast
Feature: US1180600 - Implement Swagger on ETMA services

  @TC565748
  @Manual
  @Functional
  Scenario: TC565748 - [RL0] SwaggerUI Verification
    Given a need for documentation on connection to our services
    When visiting the swagger page for our service
    Then you can view the documentation
    And you can execute the services
    And you can validate the responses for given input parameters

