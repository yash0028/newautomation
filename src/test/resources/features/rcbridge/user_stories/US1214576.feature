# Last updated on 
@US1214576
@2018.PI03
Feature: US1214576 - CLM Base Docker Image

  @TC565671
  @Automated
  @Functional
  Scenario: TC565671 - [RL0]
    Given a developer wants to build a new clm service,
    When they use the clm base docker image,
    Then they will have the necessary pieces to deploy with Monitoring, logging, etc.

