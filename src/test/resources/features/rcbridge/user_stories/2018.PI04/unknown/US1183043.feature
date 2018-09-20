# Last updated on 
@MVP
@Parity
@US1183043
@2018.PI04
Feature: US1183043 - View search results

  @TC564906
  @Automated
  @Functional
  Scenario: TC564906 - [RL0]
    Given I have initiated a search within the Mass Actions widget
    When the search identifies providers/contracts that meet the provided criteria
    Then I can view all of the required data elements

