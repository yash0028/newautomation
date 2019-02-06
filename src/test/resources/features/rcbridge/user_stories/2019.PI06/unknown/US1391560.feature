# Last updated on 
@US1391560
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1391560 - SPA/PAT, SMGA,SPGA Remove TIN from Contract

  @TC616928
  @Manual
  @Functional
  Scenario: TC616928 - [RL0]
    Given I am a User with access to maintain Contract information
    When I need to remove a TIN from a SPA/PAT, SMGA,SPGA Contract
    Then I have the ability to remove a TIN from a SPA/PAT, SMGA,SPGAContract

