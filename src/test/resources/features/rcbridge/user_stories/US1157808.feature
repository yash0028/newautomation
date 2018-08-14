# Last updated on 
@CLM_UAT
@US1157808
@2018.PI02
Feature: US1157808 - Produce report that shows Related contracts that are not tied to a Base Agreement

  @TC504825
  @Manual
  @Functional
  Scenario: TC504825 - Vaidation of Related Contracts not tied to a Base Agreement Report
    Given Report
    When Related contracts not tied to a Base Agreement
    Then Records should be displayed in the Report and also Emptoris Status should be populated in the Contract Status Table as Fallout - PA not related to a BA

