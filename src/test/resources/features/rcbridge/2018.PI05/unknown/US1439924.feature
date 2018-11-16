# Last updated on 
@Optum_Tech_Delivery
@US1439924
@2018.PI05
@MVP
@PI04
@Plus
@releaseFuture
@iterationUnknown
Feature: US1439924 - Integration - Negotiation to Load form, docusign

  @TC644490
  @Manual
  @Functional
  @Optum_Tech_Delivery
  Scenario: TC644490 - [RL0]
    Given an agreement has all approvals
    When it is sent to the provider via DocuSign
    Then the workflow is populated with

