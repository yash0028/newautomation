# Last updated on 
@US2059500
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationPresent
Feature: US2059500 - PCP lookup api provider clasification changes

  @TC990228
  @Manual
  @Functional
  Scenario: TC990228 - [RL0]
    Given the PCP lookup api ready
    When the request is made with "providerClassificaion" value "P" and "orgTypeIndicator" value [empty]
    Then the valid providerNetworkRole value is returned

  @TC990229
  @Manual
  @Functional
  Scenario: TC990229 - [RL1]
    Given the PCP lookup api ready
    When the request is made with "providerClassificaion" value "O" and "orgTypeIndicator" value [ non empty]
    Then the valid providerNetworkRole value is returned

