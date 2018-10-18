# Last updated on 
@US1307098
@2018.PI03
@2018.PI03.05
@releasePast
@iterationPast
Feature: US1307098 - API Certification

  @TC564541
  @Manual
  @Functional
  @US1307098
  @2018.PI03
  @2018.PI03.05
  Scenario: TC564541 - [RL0]
    Given the following API services with layer 7 endpoints for prod:
      | request-for-part |
      | exari-table-maint |
      | market-strategy |
      | market-exception |
      | demographics |
      | fee-schedule |
      | contracts-query |
    Then API certification is needed for each service
    #The following APIs have layer 7 endpoints for prod:
    # request-for-part
    # exari-table-maint
    # market-strategy
    # market-exception
    # demographics
    # fee-schedule
    # contracts-query

