# Last updated on 
@Charlie
@ETMA
@US1270195
@2018.PI03
Feature: US1270195 - Point to new ETMA DB

  @TC554636
  @Automated
  @Functional
  Scenario: TC554636 - Re-Run Acceptance Tests for ETMA
    When CLM Etma service is updated with the new DB
    Then all acceptance tests are re-run

