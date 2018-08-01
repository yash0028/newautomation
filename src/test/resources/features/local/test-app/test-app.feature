Feature: CLM test-app used for testing purposes. This feature is just to create "dummy" tests so that it can pass tests in the pipeline

  @2018.PI03
  @2018.PI03.01
  @MSPS
  Scenario: Passing the Acceptance-Testing stage in the shared pipeline
    When the Acceptance-Testing stage is executing on Jenkins
    Then this test will pass and it will move on to the next stage