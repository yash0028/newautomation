# Last updated on 
@RFP
@US1095910
@2018.PI02
@2018.PI02.04
@MVP
@PI02_Top3
@Plus
@10/1_Physician
@CLM_Exari
@Exari_Microservice
@F164312
@releasePast
@iterationPast
Feature: US1095910 - External Data Query for RFP - Error Handling

  @TC493891
  @Manual
  @Functional
  @RFP
  @US1095910
  @2018.PI02
  @2018.PI02.04
  Scenario: TC493891 - [RL1] Catastrophic error validation
    Given a user needs to call RFP grid
    When the RFP system goes down
    Then the user receives a RFP system error message

  @TC493890
  @Manual
  @Functional
  @RFP
  @US1095910
  @2018.PI02
  @2018.PI02.04
  Scenario: TC493890 - [RL0] Incorrect data input error validation
    Given a user needs to call RFP grid
    When a user incorrectly inputs RFP data
    Then the user receives a RFP bad input error message

  @TC493892
  @Manual
  @Functional
  @RFP
  @US1095910
  @2018.PI02
  @2018.PI02.04
  Scenario: TC493892 - [RL2] System unavailable error validation
    Given a user needs to call RFP grid
    When a RFP catastrophic error occurs
    Then a RFP service ticket will need to be created.

