# Last updated on 
@US2033486
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPresent
Feature: US2033486 - PCP address sequence id change for secondary address

  @TC970897
  @Manual
  @Functional
  Scenario: TC970897 - [RL0]
    Given the PCP re-assign secondary address changes are available
    When a contract is amended with fee-schedule replace and secondary address
    Then any random secondary address sequence id value is sent to downstream while cancelling a product.

