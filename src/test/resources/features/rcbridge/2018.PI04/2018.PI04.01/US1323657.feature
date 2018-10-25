# Last updated on 
@#MVP
@Scrum_Team_1
@PES
@US1323657
@2018.PI04
@2018.PI04.01
@PI02_Top3
@PES
@Exari_Microservice
@MVP
@10/1_Physician
@Priority_1
@CLM_Exari
@Parity
@F201611
@releasePresent
@iterationPast
Feature: US1323657 - PES Automation of Add. locations for all other contracts

  @TC580019
  @Automated
  @Functional
  @#MVP
  @Scrum_Team_1
  @PES
  @US1323657
  @2018.PI04
  @2018.PI04.01
  Scenario: TC580019 - [RL0]
    When a "tin" of "760027557" is passed to appendix 1
    Then PES returns the following information:
      | mpin           |
      | tin            |
      | firstName      |
      | lastName       |
      | facilityName   |
      | providerDegree |
      | addressLine1   |
      | addressLine2   |
      | addressType    |
      | city           |
      | state          |
      | zip            |
      | phoneNumbers   |
      | faxNumbers     |
      | emailAddresses |

