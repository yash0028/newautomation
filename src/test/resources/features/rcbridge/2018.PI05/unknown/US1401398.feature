# Last updated on 
@US1401398
@2018.PI05
@CMD
@releasePresent
@iterationUnknown
Feature: US1401398 - Execute PCP identificaiton and gatekeepr product business rule API

  @TC627935
  @Manual
  @Functional
  Scenario: TC627935 - [RL0]
    ###Scenario 1 (Cancellations on roster request- No PCP's found on roster)
    Given The roster submitted contains providers with a cancellation
    When The PCP Identification API is executed
    And The response contains no PCP's
    Then Then the roster request should continue to process through existing process

  @TC627936
  @Manual
  @Functional
  Scenario: TC627936 - [RL1]
    ###Scenario 2 (Cancellations on roster request-PCP's found on roster)
    Given The roster submitted contains providers with a cancellation
    When The PCP Identification API is executed
    And The response contains PCP's
    Then Then each PCP returned from the response should be identified and logged as a type 1 error

