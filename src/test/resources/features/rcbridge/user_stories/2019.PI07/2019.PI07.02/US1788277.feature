# Last updated on 
@US1788277
@2019.PI07
@2019.PI07.02
@releasePast
@iterationPast
Feature: US1788277 - [Unfinished] Market Product integration EDQ work (Exari)

  @TC818816
  @Manual
  @Functional
  Scenario: TC818816 - [RL0]
    Given a user is in Exari UI web page
    When the user changes the status to 'Final - Pending QA'
    And the contract final capture documents are generated
    Then the Optum service is made available
    And the Optum service returns the Market Products details

  @TC818818
  @Manual
  @Functional
  Scenario: TC818818 - [RL1]
    Given a valid Exari contract exists
    When an Exari user needs a list of Market Products applicable for the contract record
    Then an Optum service is made available to Exari
    And the service returns the Market Products

  @TC818819
  @Manual
  @Functional
  Scenario: TC818819 - [RL2]
    Given the Optum service is available to Exari
    When Exari calls the API service
    Then the Product_Services are required I
    And the service returns the matched Market_Products records from the table
    And the process continues to the next step to apply a Market Number filter

  @TC818820
  @Manual
  @Functional
  Scenario: TC818820 - [RL3]
    Given the matching Market_Products records have been returned
    When Exari UCM property 'Market_Number-DMCQ' has a value
    Then the Market_Number-DMCQ value is applied as a filter

