# Last updated on 2018-06-15T17:46:34.599Z
@MVP
@PI02_Top3
@CLM_Exari
@Parity
Feature: F159706 - Establish Contract Provider Coverage and Maintenance Functionality (Roster)

  @2018.PI02
  @2018.PI02.03
  Scenario: US1151038
    Given I am logged into Exari as an end user
    When I am processing through an interview
    Then I am able to add Providers into the Provider Roster instance with all associated columnar field data.

  @MVP
  @PI02_Top3
  @CLM_Exari
  @2018.PI02
  @2018.PI02.03
  Scenario: US1097450
    Given as a user I am adding a provider(s) (1 to many) to a contract roster (MPIN, TIN and provider name, provider effective date)
    When I add the provider and they are retro
    Then I will be prompted for a retro reason code

  @MVP
  @PI02_Top3
  @CLM_Exari
  @2018.PI02
  @2018.PI02.03
  Scenario: US1097445::0
    Given I cancel the provider(s) from a given contract roster
    When I enter the cancel date
    Then I will be promoted for a cancel reason code

  @MVP
  @PI02_Top3
  @CLM_Exari
  @2018.PI02
  @2018.PI02.03
  Scenario: US1097445::1
    Given I cancel the provider(s) from a given contract roster
    When I enter the cancel reason code
    Then I will be promoted for a cancel date

  @MVP
  @PI02_Top3
  @CLM_Exari
  @2018.PI02
  @2018.PI02.03
  Scenario: US980985
    Given I've received the Provider Roster from the Counter Party
    When I copy the roster information from excel
    Then I'm able to paste 1 to many providers into the Exari Provider Roster format from excel

  @2018.PI02
  @2018.PI02.02
  Scenario: US1129180
    Given I am logged into Exari as an end user
    When I am processing through an interview
    Then I am able to add Providers into the Provider Roster instance with all associated columnar field data.

