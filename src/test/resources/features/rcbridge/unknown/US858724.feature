# Last updated on 
@MVP
@EXARI-10529
@CLM_UAT
@US858724
@MVP
@Plus
@releaseUnknown
@iterationUnknown
Feature: US858724 - View Entity Detail

  @TC565912
  @Automated
  @Functional
  @MVP
  @EXARI-10529
  @CLM_UAT
  Scenario: TC565912 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view a Entity details
    Then I can search for an Entity
    And I can view Entity Umbrella Name
    And I can view all Contract numbers associated with the Entity
    And I can view all Alternative Names associated with the Entity
    And I can view all Identifiers associated with the Entity
    And I can view all Related Entities associated with the Entity
    And I can view all Provider Identifiers associated with the Entity

