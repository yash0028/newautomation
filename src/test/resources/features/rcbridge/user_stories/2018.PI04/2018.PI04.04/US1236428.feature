# Last updated on 
@A_UI_Story
@US1236428
@2018.PI04
@2018.PI04.04
@releaseUnknown
@iterationUnknown
Feature: US1236428 - [Continued] [Continued] CMD Single Sign On - UHG Enterprise SSO (MSid and Password )

  @CLM_UAT
  @TC598723
  @Manual
  @Acceptance
  @A_UI_Story
  Scenario: TC598723 - Validate whether the user is able to view CMD when contract record exists
    Given a CMD record exists
    When the user navigates to the CMD from within Exari contract record
    Then the user is able to view the CMD for that contract record

  @TC564530
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC564530 - [RL0]
    ##Scenario 1 (Normal User secure role- CMD access)
    Given I have CLM_PCW_USERS role in secure (normal user)
    When I enter in the CMD URL
    Then I can access and view the following CMD pages

  @TC564531
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC564531 - [RL1]
    ##Scenario 2 (Business user access role- CMD access)
    Given I have CLM_PCW_BUS_USERS role in secure (business user)
    When I enter in the CMD URL
    Then I can access and view the following CMD pages

  @TC564532
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC564532 - [RL2]
    ##Scenario 3 (Do not have secure rule- block access/message)
    Given I have do not have CLM_PCW_BUS_USERS or CLM_PCW_USERS role in secure
    When I enter in the CMD URL
    Then I am displayed the following message. "You currently do not have access to the CMD page. If you feel this is an error, please add the appropriate secure group role."
    And I cannot access any page within CMD

  @TC564533
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC564533 - [RL3]
    ##Scenario 4 (Both Secure Roles)
    Given I have have CLM_PCW_BUS_USERS or CLM_PCW_USERS role in secure
    When I enter in the CMD URL
    Then I can access and view the following CMD pages

