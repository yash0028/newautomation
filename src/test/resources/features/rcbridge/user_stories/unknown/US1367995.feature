# Last updated on 
@US1367995
@MVP
@10/1_Physician
@Priority_1
@kumar,_Sachin
@CMD
@F233635
Feature: US1367995 - Assign Penalty table for PILOT Market SPA/PAT Comprehensive

  @TC600546
  @Manual
  @Functional
  @US1367995
  Scenario: TC600546 - [RL0]
    Given the UHG_Paper_Type equals "SPA" or "PAT"
    When the Provider Market Number (UHG_Market_Number-DMCQ) equals one of the qualifying values
    And the UHG_Product_Services_Included includes one or more of the following values: Core, CommercialproductsrequiringPCP, CommercialproductsnotrequiringPCP, Navigate, Nexus-OA,Nexus-R,Nexus-NR, Compass, or Charter
    And the UHG_Product_Services_Included excludes one or more of Heritage, HeritageChoice, NHP, AllRiverValley
    Then the Penalty Table number "00001" should be recorded in the database
    And included in the provider/product payload

  @TC600547
  @Manual
  @Functional
  @US1367995
  Scenario: TC600547 - [RL1]
    Given the UHG_Paper_Type equals "SPA" or "PAT"
    When the Provider Market Number (UHG_Market_Number-DMCQ) equals one of the qualifying values
    And the UHG_Product_Services_Included includes one or more of the following values: Heritage, HeritageChoice, NHP, RiverValleyproducts
    Then the Penalty Table number "00087" should be recorded in the database
    And included in the provider/product payload

