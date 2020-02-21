# Last updated on
@SPGABusinessTestcases_AR
@releaseUnknown
@iterationUnknown
Feature: TC_SE_SPGA_AR_69

  @TC_SE_SPGA_AR_69
  @Manual
  @User_Interface
  @UAT_AUTO_INITIAL_TRANSACTION1
  Scenario Outline: TC_SE_SPGA_AR_69 - [RL0] Author SPGA contract in <site>
	
	Given I am logged into Exari Dev as a valid user and go to the "<site>" site

    #Draft
    And I am using the "<TCName>" data from "<paperType>_SE.csv" of "<site>" and paper type "<paperType>"
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
    And I enter Amendments
    And I enter Group Summary
    Then I Complete Wizard
  
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

 	#CMD Checking
    And I Verify CMD and Capture Status
    
	Examples:
       | site          | paperType     | TCName|
       | southeast uhn   | SPGA          | TC_SE_SPGA_AR_69|

  @TC_SE_SPGA_AR_15
  @Manual
  @User_Interface
  @UAT_AUTO_AMENDMENT
  @SPGA_AMENDMENT
  @UAT_AUTO_AMENDMENT_MIG1
  @SE_SPGA_AMT 
  Scenario Outline: TC_SE_SPGA_AR_69 - [RL0] Author SPGA contract in <site>

	Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
      #Draft
    And I am using the "<TCName>" data from "<paperType>_SE.csv" of "<site>" and paper type "<paperType>"
   
    #Draft Amandament
    And I select the contract
    #Amandments sectio - Fee Schedule
    And I select the contract
    And I click on Create Amendment
    And I enter title
    And I enter Amendment Selection
    And I select Amendments needed in Amendment Selection
    And I select Amendment Type in Provider Details
	And I enter Amendments Page to amend Payment Appendix
    And I enter Contract Details in Amendments
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
    And I select Provider Roster as None
    And I enter Group Summary
    And I Complete Wizard

    #Activating Amendments
    And I Set Status as Active in Amendment

    #CMD Checking
    And I Verify CMD and Capture Status

    Examples:
       | site          | paperType     | TCName|
       | southeast uhn   | SPGA          | TC_SE_SPGA_AR_69|

