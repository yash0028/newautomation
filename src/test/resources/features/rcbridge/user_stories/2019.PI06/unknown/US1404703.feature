# Last updated on 
@US1404703
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1404703 - Handle the Terminate Contract event

  @TC713737
  @Manual
  @Functional
  Scenario: TC713737 - [RL0]
    Given a valid contract termination event is received
    When provider qualifies for an Above the Line Product Group
    Then mark combination of this ProductGroup and this Provider as needing its Contract Line cancelled in the OCM

  @TC713744
  @Manual
  @Functional
  Scenario: TC713744 - [RL1]
    Given Provider is marked as needing its Contract Line cancelled in the OCM
    When provider is a PCP for the productgroup
    Then mark combination of this ProductGroup and this Provider as generating a Type 1 PCP Reassignment error in the OCM

  @TC713747
  @Manual
  @Functional
  Scenario: TC713747 - [RL2]
    Given Provider is marked as needing its Contract Line cancelled in the OCM
    When provider is NOT a PCP for the productgroup
    Then mark combination of this ProductGroup and this Provider as needing to cancel the Contract Line in the OCM

  @TC713749
  @Manual
  @Functional
  Scenario: TC713749 - [RL3]
    Given a valid contract termination event is received
    When provider DOES NOT qualify for an Above the Line Product Group
    Then mark the combination of this ProductGroup and this Provider as N/A in the OCM
    ###

