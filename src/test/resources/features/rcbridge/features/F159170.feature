# Last updated on 
@MVP
@Plus
@Priority_2
@F159170
Feature: F159170 - CLM Demographic update- Submit demographic request from Propel to Phycon CLM with PhyCon

  @US861014
  @2018.PI04
  Scenario: US861014 - Allow for error handling if call to Optum provides failure point
    Given: The provider is not credentialed via the cred flag = N
    When: The demographic data is returned from PES
    Then: Exari would invoke a Phycon request for this provider to be credentialed

