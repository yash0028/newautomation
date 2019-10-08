# Last updated on 
@US1857515
@2019.PI10
@releaseFuture
@iterationUnknown
Feature: US1857515 - CMD Data Source Integration - MPM for sourcing Medicare COSMOS DIVs Report

  @TC954879
  @Manual
  @Functional
  Scenario: TC954879 - [RL0]
    Given Payment Appendix properties available in UCM
    When Payment Appendix contains "Medicare Advantage"|"Mosaic"|"Erickson"|"Senior Care Options"|
    Then setProductClass "Medicare & Retirement"
    And setRequestparam == "TRUE"

  @TC954884
  @Manual
  @Functional
  Scenario: TC954884 - [RL1]
    Given information from the MPM is needed
    When the information needed is Market to COSMOS DIV report
    Then the information is available via microservice
    And the DIV information from the MPM is used for the market
    And the DIV information from column Z of the CMD Pilot Product Description table is not used for the market
    ###

