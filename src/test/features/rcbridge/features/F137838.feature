# Last updated on 2018-04-25T18:26:18.631Z
@MVP
@CLM_Exari
Feature: F137838 - Configure User Access and Security (excluding Approval Roles) - Exari

  @MVP
  @2018.PI01
  @2018.PI01.03
  Scenario: US1048821
    Given I am logged into Exari as a Contract Administrator,
    When I apply the defined User Group configurations and select save,
    Then the Exari application will be configured with the appropriate User Group configurations, to support the overall user access and security model structure, which will meet the Contract, Entity, and Workflow user business needs.

  @MVP
  @2018.PI01
  @2018.PI01.04
  Scenario: US1048824
    Given I am logged into Exari as a Contract Administrator,
    When I apply the defined User Group configurations and select save,
    Then the Exari application will be configured with the appropriate User Group configurations, to support the overall user access and security model structure, which will meet the Contract, Entity, and Workflow user business needs.

  @MVP
  @2018.PI01
  @2018.PI01.02
  Scenario: US1066649
    Given I am a Power Author user
    When I log into Power Author
    Then I have the ability to author or build contract templates and interviews

  @MVP
  @2018.PI01
  @2018.PI01.02
  Scenario: US935310
    Given I am a Business Administrator who needs to manage contract templates and the interview in Exari
    When I apply the instructions to install Power Author on my computer
    Then I am able to install and open/use Power Author

  @MVP
  @2018.PI01
  @2018.PI01.02
  Scenario: US860740
    Given I am logged into Exari as a Contract Administrator,
    When I apply the defined User Group configurations and select save,
    Then the Exari application will be configured with the appropriate User Group configurations, to support the overall user access and security model structure, which will meet the Contract, Entity, and Workflow user business needs.

