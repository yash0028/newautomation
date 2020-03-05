# Last updated on 
@SMGABusinessTestcases_IN
@releaseUnknown
@iterationUnknown
Feature: TC_CEN_SMGA_IN_59
  
  @TC_CEN_SMGA_IN_59
  @Manual
  @User_Interface
  @UAT_AUTO
  @UAT_AUTO_INITIAL_TRANSACTION
  @SMGA_INITIAL
    @4j
  Scenario Outline: TC_CEN_SMGA_IN_59 - [RL0] Author SMGA contract in <site>  
	Given I am logged into Exari Dev as a valid user and go to the "<site>" site
  
    #Draft
    And I am using the "<TCName>" data from "<paperType>_CEN.csv" of "<site>" and paper type "<paperType>"
    And I enter PES Inputs
    And I enter PES Response
    And I select Market Number
    And I enter Request For Participation Response
    And I enter Document Selection
    And I preview Provider Details
    And I enter Practice Locations for SMGA Contract
    And I preview Provider Details
    And I enter Market Exception Grid
    And I enter Market Exception Grid
    And I enter Contract Details
    And I enter HBPs Red Door
    And I select Provider Signatory
    And I enter Market Strategy Grid
    And I enter Appendix 2
    And I enter Payment Appendix
    And I enter Additional Locations
    And I enter Regulatory Appendices
    And I select Provider Roster as None
    And I enter Amendments
    And I enter Group Summary
    Then I Complete Wizard
    
    #Non Std approval process
    
    #Workflow Approval Physician Local Contract Approver_13476" role
    
    #log in with your (User who creates contract need to have following roles in secure
    
    #Workflow Approval Physician Local Pricing Approver_13476" role  and click on sign in
    
    #Final capture
    
    And I Start Workflow
    And I Start Process for Initial Transaction
    #Approval
    And I Approve Payment Appendix

    And I Set Status as Final Pending QA
    And I complete final capture by add provider using TIN
    
    #Activate
    And I Set Status as Active
    And I capture Contract Number
    
    #CMD Check
    And I Verify CMD and Capture Status

    #NDB Check
   		
    
    Examples:    
       | site          | paperType     | TCName|
       | central uhn   | SMGA          | TC_CEN_SMGA_IN_59|
       
       
        
  @TC_CEN_SMGA_IN_59
  @Manual
  @User_Interface
  @UAT_AUTO_MAKE_A_CORRECTION
  @UAT_AUTO_AMENDMENT
  @SMGA_AMANDMENT
  Scenario Outline: TC_CEN_SMGA_IN_59 - [RL0] Author SMGA contract in <site>  
		
	Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"	 
    And I am using the "<TCName>" data from "<paperType>_CEN.csv" of "<site>" and paper type "<paperType>"
        
    #Add provider with Make a correction - TIN Change - Upload 
    When I am logged into Exari Dev
    And I search Contract using Contract Number
    And I click Make Correction
    And I enter Market Exception Grid in Make Correction
    And I enter Market Exception Grid
    And I set Roster Action as Upload
    And I Download Current Roster
    And I Upload Completed Roster
    And I enter warning in Make Correction
    And I enter validation
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard 
    And I Set Status as Active in Amendment

    #Amendment CMD checking
    And I Verify CMD and Capture Status


    Examples:    
       | site          | paperType     | TCName|
       | central uhn   | SMGA          | TC_CEN_SMGA_IN_59|
    