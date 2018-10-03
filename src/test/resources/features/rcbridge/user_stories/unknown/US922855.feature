# Last updated on 
@MVP
@CLM_UAT
@EXARI-11273
@US922855
@MVP
@Plus
@Priority_1
@F188964
Feature: US922855 - View Alternate Name/Alias Time Lining History

  @TC564773
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @EXARI-11273
  @US922855
  Scenario: TC564773 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view the time lining history of Alternate Name/Alias/DBA changes on an Entity
    Then I can view the previous Alternate Name/Alias/DBA field value
    And I can view the current Alternate Name/Alias/DBA field value
    And I can view the User who performed the change to the Alternate Name/Alias/DBA field
    And I can view the time and date the User performed the change to the Alternate Name/Alias/DBA field

