# Last updated on 2018-05-17T18:29:34.797Z
@MVP
@Parity
Feature: F159190 - Exari>NDB Physician Medical Necessity Payload - CF

  Scenario: US1125526
    Given Medical necessity applies to the Physician Contract
    When Exari contractors value an Med Nec Amendment the Medical Necessity Payload would be created
    Then NDB can load the Medical Necessity data to the NDB Medical Necessity Hang off screen to the given Provider in NDB

  Scenario: US1126587
    Given Medical necessity applies to the Physician Contract
    When Exari contractors value an Med Nec Amendment the Medical Necessity Payload would be created
    Then NDB can load the Medical Necessity data to the NDB Medical Necessity Hang off screen to the given Provider in NDB

