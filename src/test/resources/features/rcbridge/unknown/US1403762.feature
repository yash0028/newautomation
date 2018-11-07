# Last updated on 
@US1403762
@MVP
@Maintenance
@releaseUnknown
@iterationUnknown
Feature: US1403762 - Build Handler for TIN Update

  @TC622675
  @Manual
  @Functional
  Scenario: TC622675 - [RL0]
    Given the OCM is subscribed to the Exari Business Event Type "OrganizationAdded"
    When an "AddOrganization" transaction is published
    Then OCM will recognize this transaction
    And OCM will trigger the data validation of the published roster data

