# Last updated on 
@MVP
@Plus
@CLM_Exari
@F192389
Feature: F192389 - Define Mass Actions

  @MVP
  @EXARI-11526
  @CLM_Exari
  @US1137954
  @2018.PI03
  Scenario: US1137954 - Update existing Mass Action definitions
    Given I am a Mass Actions Administrator
    When I need to update a Mass Action Definition
    Then I can update the Mass Action Definition name
    And I can update the Mass Action Definition description

  @MVP
  @EXARI-11527
  @CLM_Exari
  @US1137956
  @2018.PI03
  Scenario: US1137956 - Define user access to Mass Action definitions
    Given I am a Mass Actions Administrator
    When I need to define user access
    Then I can define access within the Mass Actions UI
    And I can navigate out to apply permissions in the Repository

  @MVP
  @Plus
  @EXARI-11525
  @CLM_Exari
  @7.5_Release
  @US1137951
  @2018.PI02
  Scenario: US1137951 - Create a new Mass Action definitions
    Given I am a Mass Action Administrator
    When a new Mas Action Definition is identified
    Then I will be able to create a new Mass Action definition
    And I will be able to input a Mass Action definition name
    And I will be able to input a Mass Action definition description

  @MVP
  @Plus
  @EXARI-11474
  @EXARI-11455
  @EXARI-11456
  @CLM_Exari
  @US1138071
  @2018.PI03
  Scenario: US1138071 - View detailed list of Mass Action definitons
    Given I am a Mass Actions Administrator
    When I access the Mass Actions UI
    Then is will be able to view a more detailed view of the Mass Action Definitions

