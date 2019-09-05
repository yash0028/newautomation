# Last updated on 
@US2008258
@2019.PI09
@releasePresent
@iterationUnknown
Feature: US2008258 - Retro multiple contractds

  @TC953388
  @Manual
  @Functional
  Scenario: TC953388 - [RL0]
    Given the retro process exists
    When deal ids are part of the negotiation
    Then the details are shown in a table Table with (Deal ID, Counterparty Name, Counterparty TIN, State, Region, Market, Provider Count, Contract Owner, Paper Type)
    And multiple deal ids can be part of a retro approval

