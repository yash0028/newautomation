# Last updated on 
@US1100537
@2018.PI03
Feature: US1100537 - Document comments within approval response

  @TC564581
  @Automated
  @Functional
  Scenario: TC564581 - [RL0]
    Given the Mass Action Project is ready for approval
    When the Approver is ready to provide response to request for approval
    Then the Approver will be able to input comments at the time of approval
