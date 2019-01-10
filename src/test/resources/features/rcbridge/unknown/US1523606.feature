# Last updated on 
@Optum
@US1523606
@2018.PI05.04
@MVP
@Plus
@releaseUnknown
@iterationPresent
Feature: US1523606 - Integration - Add paper type to Physician Landing Page

  @TC694732
  @Manual
  @Functional
  @Optum
  Scenario: TC694732 - [RL0]
    Given a physician workflow is associated to a contract
    When the physician landing page is viewed
    Then the paper type is shown in the paper type field

