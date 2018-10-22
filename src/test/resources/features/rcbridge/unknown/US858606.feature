# Last updated on 
@EXARI-11273
@US858606
@Plus
@F137658
@releaseUnknown
@iterationUnknown
Feature: US858606 - View Approval Time Lining History

  @TC565729
  @Automated
  @Functional
  @EXARI-11273
  @US858606
  Scenario: TC565729 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view approvals for modifications made to Entities
    Then I can view the time and date the modification was made
    And I can view the time and date the approval was granted
    And I can view the User who performed the change
    And I can view the User with Approval Authority who approved the change

