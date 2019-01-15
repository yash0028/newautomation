# Last updated on 
@US1308272
@2018.PI04
@2018.PI04.03
@releasePast
@iterationPast
Feature: US1308272 - [Continued] CMD- User Input Required Page- View detail information (more than one contract master returned )

  @TC567000
  @Manual
  @Functional
  Scenario: TC567000 - [RL0]
    # Scenario 1 (Single Product Grouping under contract ID- More than one contract master found)
    Given I have clicked on the detail information on a contract ID
    When The contract ID has a single product grouping
    And More than one contract master was found
    Then For each contract master that was found I can see
    # Contract Master Number (display results from search)
    # Contract Master Name (Display result from search)
    # Contract System (NDB or COSMOS or both)
    # IPA (Display result from search)
    # Div (Display result from search. If no results do not populate any value)
    # COSMOS Contract number (Display result from search. If no results do not populate any value in field)
    #Panel (Display result from search. If no results do not populate any value)
    And I can see the latest search input parameters
    #NDB Market Number: XXXXXXXXXX
    #NDB Fee Schedule: XXXXXXXXXX
    #NDB Product Group: XX, XX, XX
    #COSMOS DIV: XXX
    #COSMOS Panel: XXXX
    #COSMOS Contract Number: XXXXX

  @TC619032
  @Manual
  @Functional
  Scenario: TC619032 - [RL1]
    # Scenario 2 (Multiple Product grouping under contract ID- All have more than one contract master was found
    Given I have clicked on the detail information on a contract ID
    When The contract ID has Multiple product groupings
    And More than one contract master was found for all product groupings
    Then I can see up to the first 7 contract masters for each product grouping that was returned from the search
    And I can see the latest search input parameters for each product grouping
    # NDB Market Number: XXXXXXXXXX
    # NDB Fee Schedule: XXXXXXXXXX
    # NDB Product Group: XX, XX, XX
    # COSMOS DIV: XXX
    # COSMOS Panel: XXXX
    # COSMOS Contract Number: XXXXX

  @TC619033
  @Manual
  @Functional
  Scenario: TC619033 - [RL2]
    # Scenario 3 (multiple product grouping under contract ID- at least one has no contract master, at least one has more than one contract master)
    Given I have clicked on the detail information on a contract ID
    When The contract ID has a Multiple product groupings
    And No contract master was found for at least one product grouping
    And Multiple contract masters were found for at least one product grouping
    Then For each product grouping under the contract ID where no contract master was found I can see the following message: No contract master ID was found. Please make a selection to complete the contract load. For each product grouping where more than one contract master was found I can see up to the first 7 contract masters from the search.
    And I can see the latest search input parameters for each product grouping
    # NDB Market Number: XXXXXXXXXX
    # NDB Fee Schedule: XXXXXXXXXX
    # NDB Product Group: XX, XX, XX
    # COSMOS DIV: XXX
    # COSMOS Panel: XXXX
    # COSMOS Contract Number: XXXXX

