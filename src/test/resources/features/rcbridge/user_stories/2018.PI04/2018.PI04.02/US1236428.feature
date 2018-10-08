# Last updated on 
@A_UI_Story
@US1236428
@2018.PI04
@2018.PI04.02
@MVP
@Madhur
@Priority_1
@CMD
@F218723
Feature: US1236428 - [Continued] CMD Single Sign On - UHG Enterprise SSO (MSid and Password )

  @CLM_UAT
  @TC598723
  @Manual
  @Acceptance
  @A_UI_Story
  @US1236428
  @2018.PI04
  @2018.PI04.02
  Scenario: TC598723 - Validate whether the user is able to view CMD when contract record exists
    Given a CMD record exists
    When the user navigates to the CMD from within Exari contract record
    Then the user is able to view the CMD for that contract record

