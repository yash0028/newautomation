# Last updated on
@SMGABusinessTestcases_OR
@releaseUnknown
@iterationUnknown
Feature: SPGA Business Testcases_OR
  
  @TC_WEST_SMGA_OR_03
  @Manual
  @User_Interface  
  @UAT_AUTO
  @UAT_AUTO_WEST
  @UAT_AUTO_INITIAL_TRANSACTION
  Scenario Outline: TC_WEST_SMGA_OR_03 - [RL0] Author SPGA contract in <site>  
	 Given I am logged into Exari Dev as a valid user and go to the "<site>" site
  
    #Draft
    And I am using the "<TCName>" data from "<paperType>_WEST_OR.csv" of "<site>" and paper type "<paperType>"
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
    
  
    #Final capture
    And I Start Workflow
    And I Start Process for Initial Transaction
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
    Examples:
      | site          | paperType     | TCName            |
      | west uhn      | SPGA          | TC_WEST_SMGA_OR_03|
  @TC_WEST_SMGA_OR_03
  @Manual
  @User_Interface
  @UAT_AUTO_AMANDAMENT
  Scenario Outline: TC_WEST_SMGA_OR_03 - [RL0] Amend SPGA contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site

    #Draft
    And I am using the "<TCName>" data from "<paperType>_WEST_OR.csv" of "<site>" and paper type "<paperType>"

    #
    #CMD Check
    #When I have entered the CMD dashboard URL
    #When I search for Contract
    #Then Validate Contract "71926900" status and request type "InstallContract"
    
    #NDB Checking 
	
	 #Draft Amandament
    And I select the contract
    And I click on Create Amendment
    And I enter title
    And I enter Amendment Selection
    And I select Amendments needed in Amendment Selection
    And I select Amendment Type in Provider Details
    And I select Types of Amendments
    And I select Contract Applied in Amendments
    And I enter Contract Details in Amendments
    And I enter Effective date in Contract Details
    And I enter Appendix 2 in Amendments
    And I select applied Payment Appendix
#    And I enter Payment Appendix in Amendments for SMGA contracts
#    And I check Payment Appendix
    And I select Payment Appendix for SMGA contracts
    And I enter Additional Manuals
    And I enter Steerage
    And I enter Payment Appendix in Amendments for SMGA contracts
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
		
	
	#Amendment CMD Checking
		
		
    
    Examples:    
       | site          | paperType     | TCName            |
       | west uhn      | SPGA          | TC_WEST_SMGA_OR_03|

    