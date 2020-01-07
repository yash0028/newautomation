# Last updated on 
@SPGABusinessTestcases_IN
@releaseUnknown
@iterationUnknown
Feature: TC_CEN_SPGA_IN_56
  
  @TC_CEN_SPGA_IN_56
  @Manual
  @User_Interface
  @UAT_AUTO_CENTRAL
  @UAT_AUTO
  @UAT_AUTO_INITIAL_TRANSACTION
  @SPGA_INITIAL
  Scenario Outline: TC_CEN_SPGA_IN_56 - [RL0] Author SPGA contract in <site>  
	 Given I am logged into Exari Dev as a valid user and go to the "<site>" site
  
    #Draft
    And I am using the "<TCName>" data from "<paperType>_CEN_IN.csv" of "<site>" and paper type "<paperType>"

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
    And I enter Market Strategy Grid
    And I enter Appendix 2
    And I enter Payment Appendix
    And I enter Additional Locations
    And I enter Regulatory Appendices
    And I select Provider Roster as None
    And I enter Amendments
    And I enter Group Summary
    Then I Complete Wizard
    
    #Workflow Approval at Local contract level
    
    #Workflow Approval at Pricing level
    
    #Final Capture process

    And I Start Workflow
    #check for Tier Approvals
    And I Start Process for Initial Transaction
    #Approval
    And I Approve Payment Appendix
    #Final Capture process cont.
    #check for Tier Approvals
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
    #CMD Check
	#NDB Check
    
    Examples:    
       | site          | paperType     | TCName|  				 
       | central uhn   | SPGA          | TC_CEN_SPGA_IN_56|
       
  
  @TC_CEN_SPGA_IN_56
  @Manual
  @User_Interface
  @UAT_AUTO_AMANDAMENT
  @SPGA_AMENDMENT
  @CEN_IN_AMANDMENT


  Scenario Outline: TC_CEN_SPGA_IN_56 - [RL0] Author SPGA contract in <site>

    Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
    #Draft Amandments
    And I am using the "<TCName>" data from "<paperType>_CEN_IN.csv" of "<site>" and paper type "<paperType>"
    
    #SEARCH CONTRACT    
    And I select the contract
    And I click on Create Amendment
    And I enter title
    And I enter Amendment Selection
    And I select Amendments needed in Amendment Selection
    And I select Amendment Type in Provider Details
    And I preview Provider Details
    And I select Types of Amendments
    And I select Contract Applied in Amendments
    And I enter Contract Details in Amendments
    And I enter Effective date in Contract Details
    And I enter Appendix 2 in Amendments
    And I select applied Payment Appendix
    And I check Payment Appendix
    And I choose Additional Manuals
    And I enter Steerage
    And I enter Payment Appendix in Amendments for SPGA contracts
    And I check Payment Appendix

    And I enter Group Summary
    And I Complete Wizard

     #Amandment final capture
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Set Status as Final Pending QA in Amendment
    And I Start Final Capture
    And I enter Provider Signatory in Amendment
    And I enter Our Signatory in Amendment
    And I enter Appendix 2 in Amendments FinalCapture
    And I enter Payment Appendix in Amendments FinalCapture
    And I select Provider Roster as None
    And I enter Group Summary
    And I Complete Wizard

    #Activating Amendments
    And I Set Status as Active
    
    Examples:    
       | site          | paperType     | TCName|  				 
       | central uhn   | SPGA          | TC_CEN_SPGA_IN_56|