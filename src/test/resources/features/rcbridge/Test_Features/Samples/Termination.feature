Feature: Contracts termination approval
@User_Interface
@Termination
Scenario Outline: Terminate Contract

    Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
    And I select the contract
    And I click on Termination 
    And I enter Termination details
    And I select Provider Roaster as None
    And I Select Contract Action
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard
	
	  #And I Start Workflow
    #And I Start Process for Initial Transaction
    And I Set Status as Final Pending QA in Termination
    And I Start Final Capture
    And I select Provider Roster as None
    And I Select Contract Action
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard
    And I Set Status as Active in Termination
     
     Examples:    
       | site            | paperType     | TCName|
       | northeast uhn   | MGA          | TC_TERM_01| 