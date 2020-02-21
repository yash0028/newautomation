## Last updated on
#@SPABusinessTestcases_AR
#@releaseUnknown
#@iterationUnknown
#Feature: W5_TC_SE_SPA_FL_3
#    @W5_TC_SE_SPA_FL_3
#    @Manual
#    @User_Interface
#    @UAT_AUTO
#    @UAT_AUTO_INITIAL_TRANSACTION
#    @UAT_AUTO_INITIAL_TRANSACTION_SPA
#    @W4LCJ
#    @UAT_AUTO_INITIAL_TRANSACTION_W5
#    @W5Y
#    @W5_PAT_SPA
#    Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>
#        Given I am logged into Exari Dev as a valid user and go to the "<site>" site
#
#    #Draft
#        And I am using the "<TCName>" data from "<paperType>.csv" of "<site>" and paper type "<paperType>"
#        And I enter PES Inputs
#        And I enter PES Responses
#        And I select Market Number
#        And I enter Request For Participation Response
#        And I enter Document Selection
#        And I preview Provider Details
#        And I enter Practice Locations for SPA Contract
#        And I preview Provider Details
#        And I enter Market Exception Grid
#        And I enter Market Exception Grid
#        And I select Provider Signatory
#        And I enter Contract Details
#        And I enter Appendix 1
#        And I enter Market Strategy Grid
#        And I enter Appendix 2
#        And I enter Payment Appendix
#        And I enter Additional Locations
#        And I enter Regulatory Appendices
#        And I select Provider Roster as None
#        And I enter Amendments
#        And I enter Group Summary
#        Then I Complete Wizard
#
#     #Final capture
#        And I Start Workflow
#        And I Start Process for Initial Transaction
#      #Approval
#    #And I Approve Payment Appendix
#      #Final Capture Cont.
#        And I Set Status as Final Pending QA
#        And I Start Final Capture
#        And I enter Contract Details in Final Capture
#        And I enter Provider Signatory
#        And I enter Our Signatory
#        And I enter Market Exception Grid in Final Capture
#        And I enter Market Exception Grid
#        And I add provider using TIN
#        And I select Providers
#        And I verify Providers
#        And I acknowledge the warning
#        And I enter Group Summary
#        Then I Complete Wizard
#
#    #Activate
#        And I Set Status as Active
#        And I capture Contract Number
#
#    #CMD Checking
#        And I Verify CMD and Capture Status
#
#
#        Examples:
#            | site          | paperType     | TCName            |
#            | southeast uhn | SPA           | W5_TC_SE_SPA_FL_3 |
#
#
#
#
#    @Manual
#    @User_Interface
#    @UAT_AUTO_AMANDAMENT
#    @SPA_AMENDMENT_Migration
#    @UAT_AUTO_AMENDMENT_TEST_SPA
#    @SPA_SE_AMEND
#    @W5_TC_SE_SPA_FL_3
#    @W5_PAT_SPA_MC
#
#    Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>
#        Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
#
#    #Draft
#        And I am using the "<TCName>" data from "<paperType>.csv" of "<site>" and paper type "<paperType>"
#
#        And I click Make Correction
#        And I enter Market Exception Grid in Make Correction
#        And I enter Market Exception Grid
#        And I set Roster Action as Upload
#        And I Download Current Roster
#        And I Upload Completed Roster
#        And I enter warning in Make Correction
#        And I enter validation
#        And I acknowledge the warning
#        And I enter Group Summary
#        Then I Complete Wizard
#
#        Examples:
#            | site            | paperType     | TCName          |
#            | southeast uhn   | SPA          | W5_TC_SE_SPA_FL_3|
#
#
#
#    @Manual
#    @User_Interface
#    @UAT_AUTO_AMANDAMENT
#    @SPA_AMENDMENT_Migration
#    @UAT_AUTO_AMENDMENT_TEST_SPA
#    @SPA_SE_AMEND
#    @W5_TC_SE_SPA_FL_3
#    @W5_PAT_SPA_amed
#
#    Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>
#        Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
#
#    #Draft
#        And I am using the "<TCName>" data from "<paperType>.csv" of "<site>" and paper type "<paperType>"
#
#	#Draft Amandament
#        And I select the contract
#        And I click on Create Amendment
#        And I enter title
#        And I enter Amendment Selection
#        And I select Amendments needed in Amendment Selection
#        And I select Amendment Type in Provider Details
#        //Our Signatory
#
#        And I enter Amendments Page to amend Payment Appendix
#
#        And I enter Contract Details in Amendments
#        And I enter Payment Appendix in Amendments to add Payment Appendix
#        And I select fee schedule id in Amendments
#        And I enter Group Summary
#        And I Complete Wizard
#
#	#Amandment final capture
#        And I Start Workflow
#        And I Start Process for Initial Transaction
#        And I Set Status as Final Pending QA in Amendment
#        And I Start Final Capture
#        And I enter Provider Signatory in Amendment
#        And I enter Our Signatory in Amendment
#        And I enter Appendix 2 in Amendments FinalCapture
#        And I enter Payment Appendix in Amendments FinalCapture
##    And I select Provider Roster as None
#        And I enter Group Summary
#        And I Complete Wizard
#
#    #CMD Checking
#        And I Verify CMD and Capture Status
#
#        Examples:
#            | site            | paperType     | TCName          |
#            | southeast uhn   | SPA          | W5_TC_SE_SPA_FL_3|
#
