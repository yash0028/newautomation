# Last updated on 
@US1180600
@2018.PI02
Feature: US1180600 - Implement Swagger on ETMA services

  @TC565748
  @Automated
  @Functional
  Scenario: TC565748 - [RL0]
    Given a need for documentation on connection to our services
    When visiting the swagger page for our service
    Then you can view the documentation
    And you can execute the services
    And you can validate the responses for given input parameters

