# Last updated on 
@SPGABusinessTestcases_OR
@releaseUnknown
@iterationUnknown
Feature: TC_WEST_SPA_OR_69
  
  @TC_WEST_SPGA_OR_69
  @Manual
  @User_Interface
  @UAT_AUTO
  @UAT_AUTO_INITIAL_TRANSACTION
  Scenario Outline: TC_WEST_SPGA_OR_69 - [RL0] Author SPGA contract in <site>  
	 Given I am logged into Exari Dev as a valid user and go to the "<site>" site
  
    #Draft
    And I am using the "<TCName>" data from "<paperType>_WEST_OR.csv" of "<site>" and paper type "<paperType>"
 	And I enter PES Inputs
    And I enter PES Response
    And I select Market Number
    And I enter Request For Participation Response
    And I enter Document Selection
    And I preview Provider Details
    And I enter Practice Locations for SPGA Contract
    And I preview Provider Details
    And I enter Market Exception Grid
    And I enter Market Exception Grid
    And I enter Contract Details
    And I enter HBPs Red Door
    And I select Provider Signatory
    And I enter Appendix 1
    And I enter Market Strategy Grid
    And I enter Appendix 2
    And I enter Payment Appendix
    And I enter Additional Locations
    And I enter Regulatory Appendices
    And I select Provider Roster as None
    #And I enter Amendments
    And I enter Group Summary
    Then I Complete Wizard
    
    #Workflow Approval at Local contract level
    #Workflow approval atprocing level
    
    #Final Capture process
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Approve Payment Appendix
    And I Set Status as Final Pending QA
    And I Start Final Capture
    And I enter Contract Details in Final Capture
    And I enter Provider Signatory
    And I enter Our Signatory
    And I enter Market Exception Grid in Final Capture
    And I enter Market Exception Grid
    And I add provider using TIN
    And I select Providers
    And I verify Providers
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard
    
    #Activate
    And I Set Status as Active    
    And I capture Contract Number
    
   #CMD Checking
      And I Verify CMD and Capture Status

    
    Examples:    
       | site          | paperType     | TCName|  				 
       | west uhn   | SPGA          | TC_WEST_SPGA_OR_69|
       
    
  @TC_WEST_SPGA_OR_69
  @Manual
  @User_Interface
  @UAT_AUTO_AMANDAMENT
  @SPGA_AMENDMENT

  Scenario Outline: TC_WEST_SPGA_OR_69 - [RL0] Author SPGA contract in <site>
    Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
  
    #Draft
    And I am using the "<TCName>" data from "<paperType>_WEST_OR.csv" of "<site>" and paper type "<paperType>"
    
    #Amandments sectio - Fee Schedule
    And I select the contract
    And I click on Create Amendment
    And I enter title
    And I enter Amendment Selection
    And I select Amendments needed in Amendment Selection
    And I select Amendment Type in Provider Details
	And I enter Amendments Page to amend Payment Appendix
    And I enter Contract Details in Amendments
    And I enter Effective date in Contract Details
	And I enter Payment Appendix in Amendments to replace Payment Appendix
	And I select fee schedule id in Amendments
    And I enter Group Summary
    And I Complete Wizard

    #Final Capture in Amendments
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Set Status as Final Pending QA in Amendment
    And I Start Final Capture
    And I enter Provider Signatory in Amendment
    And I enter Our Signatory in Amendment
    And I enter Payment Appendix in Amendments FinalCapture
#    And I select Provider Roster as None
    And I enter Group Summary
    And I Complete Wizard

    #Activating Amendments
    And I Set Status as Active in Amendment


   #Amendment CMD Checking
     And I Verify CMD and Capture Status

    Examples:    
       | site          | paperType     | TCName|  				 
       | west uhn   | SPGA          | TC_WEST_SPGA_OR_69|