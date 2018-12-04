# Last updated on 
@US1417435
@2018.PI05
@2018.PI05.03
@MVP
@Maintenance
@releasePresent
@iterationFuture
Feature: US1417435 - Retrieve a Contract's configuration for a Market Product Group

  @TC647355
  @Manual
  @Functional
  Scenario: TC647355 - [RL0]
    Given that the OCM has been enhanced
    When a Contract Configuration record has been created for a Contract identified by a unique identifier
    And an 'Above-the-Line' Market Product Group has been identified by: [MarketProductGroupId]
    Then demonstrate that the Contract Configuration service endpoint returns the Contract's MarketProductGroup configuration including stuff listed below in notes section.

