# Last updated on 
@US1846227
@releaseUnknown
@iterationUnknown
Feature: US1846227 - Mass Push for DTR to Artifactory Update

  @TC845079
  @Manual
  @Functional
  Scenario: TC845079 - [RL0]
    Given I am building a CLM service,
    When the Dockerfile builds the image,
    Then it pulls the base CLM image from Artifactory instead of DTR

