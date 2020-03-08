@UAT_AUTO_CANCEL_CONTRACT 
Feature: TC_CEN_MGA_IN_11
@Cancel
 Scenario Outline: CancelContracts
  When I Cancel contracts using API
  
  Examples:
      | site          | paperType     | TCName           |
      | central uhn   | MGA           | TC_CEN_MGA_IN_11 |
  