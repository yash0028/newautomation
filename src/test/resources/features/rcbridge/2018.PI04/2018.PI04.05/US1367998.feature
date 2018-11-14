# Last updated on 
@US1367998
@2018.PI04
@2018.PI04.05
@MVP
@10/1_Physician
@Priority_1
@kumar,_Sachin
@CMD
@releasePresent
@iterationFuture
Feature: US1367998 - Determine Product Penalty Table requirement

  @TC611128
  @Manual
  @Functional
  Scenario: TC611128 - [RL1]
    Given UHG_Site includes UHN Northeast, UHN Southeast, UHN West, UHN Central or UHN National
    When Product_Services value does not include 'Core, CommercialproductsrequiringPCP, CommercialproductsnotrequiringPCP, Navigate, Nexus-OA,Nexus-R,Nexus-NR, Compass, Charter, Heritage, HeritageChoice, NHP, or AllRiverValleyproducts'
    Then Penalty Notification Table is not required in the OCM. (Property that is expected/not expected in the OCM record)

