# Last updated on 
@A_UI_Story
@US1388678
@2018.PI04
@2018.PI04.02
@releaseUnknown
@iterationUnknown
Feature: US1388678 - [Unfinished] [Continued] CMD Single Sign On - UHG Enterprise SSO (MSid and Password )

  @TC615291
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC615291 - [RL0]
    ##Scenario 1 (Normal User secure role- CMD access)
    Given I have CLM_PCW_USERS role in secure (normal user)
    When I enter in the CMD URL
    Then I can access and view the following CMD pages

  @TC615292
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC615292 - [RL1]
    ##Scenario 2 (Business user access role- CMD access)
    Given I have CLM_PCW_BUS_USERS role in secure (business user)
    When I enter in the CMD URL
    Then I can access and view the following CMD pages

  @TC615293
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC615293 - [RL2]
    ##Scenario 3 (Do not have secure rule- block access/message)
    Given I have do not have CLM_PCW_BUS_USERS or CLM_PCW_USERS role in secure
    When I enter in the CMD URL
    Then I am displayed the following message. "You currently do not have access to the CMD page. If you feel this is an error, please add the appropriate secure group role."
    And I cannot access any page within CMD

  @TC615294
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC615294 - [RL3]
    ##Scenario 4 (Both Secure Roles)
    Given I have have CLM_PCW_BUS_USERS or CLM_PCW_USERS role in secure
    When I enter in the CMD URL
    Then I can access and view the following CMD pages

