# Last updated on 
@US1359131
@2018.PI04
@2018.PI03.03
@MVP
@Madhur
@Priority_1
@CMD
@F218723
Feature: US1359131 - CMD user input-Page Edit product group detail info

  @TC597174
  @Manual
  @Functional
  @US1359131
  @2018.PI04
  @2018.PI03.03
  Scenario: TC597174 - [RL2]
    # Scenario 2 (Edit contract master detail info- data fields add new row)
    Given I am on the CMD Action Required page
    When I have clicked the down arrow on a contract summary row
    And No contract results were found for the contract summary row
    And I have clicked the add button
    Then The following fields are presented to me and editable.
      | Market Number |
      | Fee Schedule number |
      | Product Group code |
      | Contract System |
      | IPA |
      | Contract type |
      | Group Table number |
      | pay Method |
      | DIV |
      | Panel |
      | Search for contract master button |
    # Market Number (required)
    # Fee Schedule number (required)
    # Product Group code (required)
    # Contract System (NDB or COSMOS required)
    # IPA (Optional)
    # Contract type (Optional)
    # Group Table number (optional)
    # pay Method (optional)
    # DIV (required if COSMOS is selected)
    # Panel (required if COSMOS is selected
    # Search for contract master button (button is not active until all required fields are entered)

