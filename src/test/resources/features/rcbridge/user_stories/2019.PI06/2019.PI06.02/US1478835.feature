# Last updated on 
@CMD
@US1478835
@2019.PI06
@2019.PI06.02
@releaseUnknown
@iterationUnknown
Feature: US1478835 - CMD UTILITY - Our Legal Entities list and microservice

  @TC672208
  @Automated
  @Functional
  @CMD
  Scenario: TC672208 - [RL0]
    Given a user needs to query the table data
    When the user requests for legal entity data
    Then the query returns entire table data

