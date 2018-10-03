# Last updated on 
@A_UI_Story
@US1303750
@2018.PI04
@2018.PI04.02
Feature: US1303750 - [Continued] CMD- User Input Required Page- View & Edit contract detail information (no search results found)

  @TC593196
  @Manual
  @Functional
  Scenario: TC593196 - [RL1]
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

  @TC564772
  @Automated
  @Functional
  Scenario: TC564772 - [RL0]
    # Scenario 1 (View contract master detail info- No results with message)
    Given I am on the CMD Action required page
    When I have clicked the down arrow on a contract summary row
    And No contract results were found for the contract summary row
    Then I am presented with a message. "No contract masters were found based on the below search parameters. In order to complete this contract installation, please enter applicable information in the fields listed below.
    And I can see the input parameters below the message
      | Market Number |
      | Fee Schedule |
      | Product Group |
    #Search parameters
    #Market Number: XXXXXXXXXX
    #Fee Schedule: XXXXXXXXXX
    #Product Group: XX, XX, XX

