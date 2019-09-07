# Last updated on 
@US2033276
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPresent
Feature: US2033276 - MAHP GHMP Lab Rad Exception tollgate-2 api implementation

  @TC970892
  @Manual
  @Functional
  Scenario: TC970892 - [RL0]
    Given the Lab Rad Exception tollgate-2 cross walk file is uploaded
    And the API is implemented
    When the call to the API is made with the valid TIN
    Then the Exception Type and the IPA number are returned

  @TC970899
  @Manual
  @Functional
  Scenario: TC970899 - [RL1]
    Given the Lab Rad Exception tollgate-2 cross walk file uploaded
    And the API is implemented
    When the call to the API is made with invalid TIN
    Then no data is returned

