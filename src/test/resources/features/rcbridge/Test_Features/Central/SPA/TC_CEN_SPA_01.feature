# Last updated on
@SPABusinessTestcases_IN
@releaseUnknown
@iterationUnknown
Feature: SPA Business Testcases_IN
 @TC_CEN_SPA_IN_01
 @Manual
 @User_Interface
 @UAT_AUTO
 @UAT_AUTO_INITIAL_TRANSACTION
 @UAT_AUTO_INITIAL_TRANSACTION_SPA
 Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>
  Given I am logged into Exari Dev as a valid user and go to the "<site>" site

    #Draft
  And I am using the "<TCName>" data from "<paperType>.csv" of "<site>" and paper type "<paperType>"
  And I enter PES Inputs
  And I enter PES Response
  And I select Market Number
  And I enter Request For Participation Response
  And I enter Document Selection
  And I preview Provider Details
  And I enter Practice Locations for SPA Contract
  And I preview Provider Details
  And I enter Market Exception Grid
  And I enter Market Exception Grid
  And I enter Contract Details
  And I enter Market Strategy Grid
  And I enter Appendix 2
  And I enter Payment Appendix
  And I enter Additional Locations
  And I enter Regulatory Appendices
  And I select Provider Roster as None
  And I enter Amendments
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
  And I enter retro code in Provider Roster
  And I acknowledge the warning
  And I enter Group Summary
  Then I Complete Wizard

	#Activate
  And I Set Status as Active
	And I capture Contract Number


  Examples:
      | site          | paperType     | TCName           |
      | central uhn   | SPA           | TC_CEN_SPA_IN_01 |
      
 
 @TC_CEN_SPA_IN_01
 @Manual
 @User_Interface
 @UAT_AUTO_AMANDAMENT
 Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>
  	Given I am logged into Exari Dev as a valid user and go to the "<site>" site

	   #Draft
	  And I am using the "<TCName>" data from "<paperType>.csv" of "<site>" and paper type "<paperType>"
	 
	  #Draft Amendment
	  #When I am logged into Exari Dev
	  #And I search Contract using Contract Number
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
	  And I check Payment Appendix
	  And I enter Additional Manuals
	  And I enter Steerage
	  And I enter Payment Appendix in Amendments for SPA contracts
	  And I check Payment Appendix
	  And I enter Group Summary
	  And I Complete Wizard

    #Amendment Final Capture
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
	  
	  #Activating Amendment
  	And I Set Status as Active in Amendment

    #Amendment CMD Check
    #Cosmos Check


  Examples:
      | site          | paperType     | TCName           |
      | central uhn   | SPA           | TC_CEN_SPA_IN_01 |