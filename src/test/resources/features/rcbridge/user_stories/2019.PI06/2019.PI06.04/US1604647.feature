# Last updated on 
@US1604647
@2019.PI06
@2019.PI06.04
@releasePresent
@iterationPresent
Feature: US1604647 - Market Product integration EDQ work (Exari)

  @TC758898
  @Manual
  @Functional
  Scenario: TC758898 - [RL0]
    Given a user is in Exari UI web page
    When the user changes the status to 'Final - Pending QA'
    And the contract final capture documents are generated
    Then the Optum service is made available
    And the Optum service returns the Market Products details

  @TC770244
  @Manual
  @Functional
  Scenario: TC770244 - [RL1]
    Given a valid Exari contract exists
    When an Exari user needs a list of Market Products applicable for the contract record
    Then an Optum service is made available to Exari
    And the service returns the Market Products

  @TC770247
  @Manual
  @Functional
  Scenario: TC770247 - [RL2]
    Given the Optum service is available to Exari
    When Exari calls the API service
    Then the Product_Services are required
    And the service returns the matched Market_Products records from the table
    And the process continues to the next step to apply a Market Number filter

  @TC770249
  @Manual
  @Functional
  Scenario: TC770249 - [RL3]
    Given the matching Market_Products records have been returned
    When Exari UCM property 'Market_Number-DMCQ' has a value
    Then the Market_Number-DMCQ value is applied as a filter

