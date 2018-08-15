# Last updated on 
@US1206868
@2018.PI03
Feature: US1206868 - Pilot (Top 6 Market Numbers) - FQHC/PHO/ACO/Filed

  @CLM_UAT
  @TC526285
  @Manual
  @Acceptance
  Scenario: TC526285 - Validation of Filed contract Records Active & Executed status    or  Expired status  for Market Number 45595
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) FQHC/PHO/ACO/Filed contract meets the FQHC/PHO/ACO/Filed Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

  @CLM_UAT
  @TC526258
  @Manual
  @Acceptance
  Scenario: TC526258 - Validation of Filed contract Records Active & Executed status    or  Expired status  for Market Number 36555
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) FQHC/PHO/ACO/Filed contract meets the FQHC/PHO/ACO/Filed Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

  @CLM_UAT
  @TC526228
  @Manual
  @Acceptance
  Scenario: TC526228 - Validation of Filed contracts   Active & Executed   and  Expired  Records for Market Number 3413
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) FQHC/PHO/ACO/Filed contract meets the FQHC/PHO/ACO/Filed Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

  @CLM_UAT
  @TC526263
  @Manual
  @Acceptance
  Scenario: TC526263 - Validation of Filed contract Records Active & Executed status    or  Expired status  for Market Number 45592
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) FQHC/PHO/ACO/Filed contract meets the FQHC/PHO/ACO/Filed Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

  @CLM_UAT
  @TC526252
  @Manual
  @Acceptance
  Scenario: TC526252 - Validation of Filed contract Records Active & Executed status    or  Expired status  for Market Number 13476
    Given Pilot Market Numbers (3413, 13476, 13478, 36555, 45592, 45595) FQHC/PHO/ACO/Filed contract meets the FQHC/PHO/ACO/Filed Base Market migration criteria for Executed, Active, and Expired contracts
    When I run the migration process
    Then I validate all steps as documented in the Deployment Activity Checklist

