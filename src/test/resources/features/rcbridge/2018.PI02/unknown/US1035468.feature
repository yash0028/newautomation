# Last updated on 
@Workflow
@US1035468
@2018.PI02
@releasePast
@iterationUnknown
Feature: US1035468 - Send Counter Party parameters to Optum

  @TC565831
  @Automated
  @Functional
  @Workflow
  @US1035468
  @2018.PI02
  Scenario: TC565831 - [RL0]
    Given RFP has returned a result of not accepting new physicians
    When the contractor provides a reason for continuing to contract
    Then the contractor is able to continue creating a contract

