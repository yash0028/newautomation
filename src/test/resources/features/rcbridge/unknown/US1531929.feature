# Last updated on 
@Exari
@US1531929
@Exari_R_8.0
@EXARI-13133
@releasePresent
@iterationUnknown
Feature: US1531929 - Select provider notice address(es)

  @TC700957
  @Manual
  @Functional
  @Exari
  Scenario: TC700957 - [RL0]
    Given a Mass Action project has been designated as requiring paper mail
    When a "Notice To" address has not been designed within the contract
    Then a selection of "Stored Address", "Lookup Address", "Import Address" will be presented

  @TC700964
  @Manual
  @Functional
  @Exari
  Scenario: TC700964 - [RL1]
    Given a Mass Action project has been designated as requiring paper mail
    When a "Notice To" address has not been designated within the contract
    And the user selects "Stored Address"
    Then the application will return a concatenated record of the Service Address, including "Additional_Service_Street", "Additional_Service_City", "Additional_Service_State", "Additional_Service_Zip"

  @TC700967
  @Manual
  @Functional
  @Exari
  Scenario: TC700967 - [RL2]
    Given a Mass Action project has been designated as requiring paper mail
    When a "Notice To" address has not been designated within the contract
    And the user selects "Lookup Address"
    Then the application will initiate a PES call to refresh the provider data
    And this call will be based off of the Counter Party MPIN and TIN

  @TC700968
  @Manual
  @Functional
  @Exari
  Scenario: TC700968 - [RL3]
    Given a Mass Action project has been designated as requiring paper mail
    When a "Notice To" address has not been designated within the contract
    And the user selects "Import Address"
    Then the Mass Action UI will present the user with a choice of "Type In" or "Import"
    And if "Type In" is chosen, the UI will provide fields to enter "Attn.", "Street", "City", "State", "Zip"
    And if "Import" is chose, the UI will provide a browse button to navigate to a file for import

  @TC700969
  @Manual
  @Functional
  @Exari
  Scenario: TC700969 - [RL4]
    Given a Mass Action project has been designated as requiring paper mail
    When a "Notice To" address has been designated within the contract
    Then the application will present the user with the Notice To address
    And the application will also present the user with options for "Lookup Address" and "Import Address"

  @TC700970
  @Manual
  @Functional
  @Exari
  Scenario: TC700970 - [RL5]
    Given a Mass Action project has been designated as requiring paper mail
    When a "Notice To" address has been designated within the contract
    And the user selects "Lookup Address"
    Then the application will initiate a PES call to refresh the provider data
    And this call will be based off of the Counter Party MPIN and TIN

  @TC700971
  @Manual
  @Functional
  @Exari
  Scenario: TC700971 - [RL6]
    Given a Mass Action project has been designated as requiring paper mail
    When a "Notice To" address has been designated within the contract
    And the user selects "Import Address"
    Then the Mass Action UI will present the user with a choice of "Type In" or "Import"
    And if "Type In" is chosen, the UI will provide fields to enter "Attn.", "Street", "City", "State", "Zip"
    And if "Import" is chose, the UI will provide a browse button to navigate to a file for import

