# Last updated on 
@Andrew_B
@PES
@US1253705
@2018.PI03
Feature: US1253705 - Create Appendix 1 Search Demographics API

  @TC543875
  @Automated
  @Functional
  Scenario: TC543875 - [RL1] Bad Path Appendix 1 Validation
    #Bad Path
    Given a user wants to populate appendix 1 with addresses
    When a "tin" of "abcd12345" is passed to appendix 1
    Then the user receives a bad input error message

  @TC543869
  @Automated
  @Functional
  Scenario: TC543869 - [RL0] Happy Path Appendix 1 Validation
    #Happy Path
    Given a user wants to populate appendix 1 with addresses
    When a "tin" of "760027557" is passed to appendix 1
    Then PES returns the following information:
      | addressLine1 |
      | addressType |
      | city |
      | state |
      | zip |

