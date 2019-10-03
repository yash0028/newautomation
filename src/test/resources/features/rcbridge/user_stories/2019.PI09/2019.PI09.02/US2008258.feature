# Last updated on 
@Sheham
@Suman
@US2008258
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationPast
Feature: US2008258 - Retro multiple contracts

  @TC953388
  @Manual
  @Functional
  @Sheham
  @Suman
  Scenario: TC953388 - [RL0]
    Given the retro process exists
    When multiple deal ids are part of the request
    Then the details are shown in a table with (Deal ID, Contract Owner, Paper Type, Counterparty MPIN, Counterparty Name, Counterparty TIer, Counterparty TIN, Market, Region, State, Total Number of Providers)
    And multiple deal ids can be part of a retro approval

  @TC989429
  @Manual
  @Functional
  @Sheham
  @Suman
  Scenario: TC989429 - [RL1]
    Given a contractor is starting the retro process
    When they search for agreements to add
    Then they are able to add multiple contracts to the process

