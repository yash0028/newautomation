# Last updated on 
@Optum
@US1439924
@2018.PI05
@releasePresent
@iterationUnknown
Feature: US1439924 - Integration - Negotiation to Load form, docusign

  @TC644490
  @Manual
  @Functional
  @Optum
  Scenario: TC644490 - [RL0]
    Given an agreement has all approvals
    When it is sent to the provider via DocuSign
    Then the field " This agreement was sent for signatures via DocuSign (From Exari) is populated
    And the field "Provider Signature Received Date (DocuSign)" is populated
    And the field "UHC Signature Received Date (DocuSign)" is populated

