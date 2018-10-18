# Last updated on 
@MVP
@CLM_UAT
@EXARI-11273
@US858632
@MVP
@Plus
@Priority_1
@F188964
@releaseUnknown
@iterationUnknown
Feature: US858632 - View Supplemental Detail Time Lining History

  @TC564407
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @EXARI-11273
  @US858632
  Scenario: TC564407 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to audit supplemental detail associated with an Entity
    Then I can view documents associated to the Entity
    And I can view notes associated to the Entity
    And I can view the User who uploaded the document
    And I can view the User who entered the note
    And I can view the date and time of when the User performed the action

