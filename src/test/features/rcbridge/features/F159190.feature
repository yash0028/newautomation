# Last updated on 2018-05-23T14:18:28.941Z
@MVP
@Parity
Feature: F159190 - Exari>NDB Physician Medical Necessity Payload - CF

  @2018.PI02
  @2018.PI02.04
  Scenario: US1135364
    Given Medical necessity applies to the Physician Contract
    When Exari contractors update the value of Medical Necessity information the Payload would be created
    Then NDB will update the Medical Necessity data to the NDB Medical Necessity Hang off screen to the given Provider in NDB

  @2018.PI02
  @2018.PI02.04
  Scenario: US1125526
    Given Medical necessity applies to the Physician Contract
    When Exari contractors value the Medical Necessity information the Payload would be created
    Then NDB can load the Medical Necessity data to the NDB Medical Necessity Hang off screen to the given Provider in NDB

  @2018.PI02
  @2018.PI02.04
  Scenario: US1126587
    Given Medical necessity applies to the Physician Contract
    When Exari contractors value the Medical Necessity information the Payload would be created
    Then NDB can load the Medical Necessity data to the NDB Medical Necessity Hang off screen to the given Provider in NDB

