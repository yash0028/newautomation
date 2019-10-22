# Last updated on 
@Samir_Ahmed
@Damodar
@PES
@US2086690
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationPresent
Feature: US2086690 - PES CP Add Attributes to Microservice(Optum Dev)

  @TC1025764
  @Manual
  @Functional
  @Samir_Ahmed
  @Damodar
  @PES
  Scenario: TC1025764 - [RL0]
    Given the PES Summary0002 service is up and running
    When a valid request is initiated
    And the service returns a valid response
    And PAY_TYPE_CD | PAYEE_PROV_ID | PAYEE_PROV_LST_NM | PAYEE_PROV_FST_NM | PAYEE_PROV_MDL_NM_ | have value
    Then the attribute values are also stored as part of the CLM record
    ###

