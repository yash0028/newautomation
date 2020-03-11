# Last updated on
@MGABusinessTestcases_IN
@releaseUnknown
@iterationUnknown
Feature: CMD_Cleanup
 @User_Interface
 @CMD_CLEANUP
  Scenario Outline: CMD Cleanup

    And I Cleanup CMD Data
   
    Examples:
      | site          | paperType     | TCName  |
      | central uhn   | MGA           | TEST123 |