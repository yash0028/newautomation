# Last updated on 
@US861014
@2018.PI04
@MVP
@Plus
@Priority_2
@F159170
@releasePresent
@iterationUnknown
Feature: US861014 - Allow for error handling if call to Optum provides failure point

  @TC564886
  @Automated
  @Functional
  @US861014
  @2018.PI04
  Scenario: TC564886 - [RL0]
    Given The provider is not credentialed via the cred flag = N
    When The demographic data is returned from PES
    Then Exari would invoke a Phycon request for this provider to be credentialed

