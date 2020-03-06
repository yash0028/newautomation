# Last updated on
@SPABusinessTestcases_IN
@releaseUnknown
@iterationUnknown
Feature: W4_TC_CEN_SPA_MO_1
 @W4_TC_CEN_SPA_1
 @Manual
 @User_Interface
 @UAT_AUTO
 @UAT_AUTO_INITIAL_TRANSACTION
 @UAT_AUTO_INITIAL_TRANSACTION_SPA
 @CMD_CHECK
 @W4LCJ
 @wave4
 @UAT_AUTO_INITIAL_TRANSACTION_W4
  Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>
  Given I am logged into Exari Dev as a valid user and go to the "<site>" site

    #Draft
  And I am using the "<TCName>" data from "<paperType>_CEN.csv" of "<site>" and paper type "<paperType>"
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
  And I select Provider Signatory
  And I enter Contract Details
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

  #Final capture
  And I Start Workflow
  And I Start Process for Initial Transaction
  And I Set Status as Final Pending QA
  And I complete final capture by add provider using TIN

#  And I Start Final Capture
#  And I enter Contract Details in Final Capture
#  And I enter Provider Signatory
#  And I enter Our Signatory
#  And I enter Market Exception Grid in Final Capture
#  And I enter Market Exception Grid
#  And I add provider using TIN
#  And I select Providers
#  And I verify Providers
#  #And I enter retro code in Provider Roster
#  And I acknowledge the warning
#  And I enter Group Summary
#  Then I Complete Wizard

	#Activate
  And I Set Status as Active
	And I capture Contract Number

   #CMD CHECk
   And I Verify CMD and Capture Status



   Examples:
      | site          | paperType     | TCName              |
      | central uhn   | SPA           | W4_TC_CEN_SPA_MO_1  |

 #Tin change (Make a correction) SPA CEN
 @W4_TC_CEN_SPA_MO_1
 @Manual
 @User_Interface
 @UAT_AUTO_MAKE_A_CORRECTION
 @UAT_AUTO_AMENDMENT
 @SPA_AMENDMENT
 @UAT_AUTO_AMENDMENT_W4
 Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>

  Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
  And I am using the "<TCName>" data from "<paperType>_CEN.csv" of "<site>" and paper type "<paperType>"


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


     #CMD Check
   #CMD Check
  And I Verify CMD and Capture Status

  Examples:
   | site          | paperType     | TCName             |
   | central uhn   | SPA           | W4_TC_CEN_SPA_MO_1 |

 @W4_TC_CEN_SPA_MO_1
 @Manual
 @User_Interface
 @UAT_AUTO_AMANDAMENT
 @SPA_AMENDMENT
 @UAT_AUTO_AMENDMENT_W4
 @KS_W4_AMENDMENTS

 Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>
  Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"

	   #Draft
  And I am using the "<TCName>" data from "<paperType>_CEN.csv" of "<site>" and paper type "<paperType>"

	  #Draft Amendment
	  #When I am logged into Exari Dev
	  #And I search Contract using Contract Number
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
  And I enter Appendix 2 in Amendments
  And I select applied Payment Appendix
#    And I check Payment Appendix
  And I choose Additional Manuals
  And I enter Steerage
  And I enter Payment Appendix in Amendments for MGA contracts
  And I enter Regulatory Appendices
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
  And I Verify CMD and Capture Status

    #Cosmos Check


  Examples:
   | site          | paperType     | TCName             |
   | central uhn   | SPA           | W4_TC_CEN_SPA_MO_1 |