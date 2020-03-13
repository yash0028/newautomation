# Last updated on
  #  # Appendix2 -  Standard ; Payment Appendix - All Player ; Add provider through make correction
  #  # Amendments -- Add Medicare
@PATBusinessTestcases_FL
@releaseUnknown
@iterationUnknown
Feature: W5_TC_SE_PAT_FL_01

  @W5_TC_SE_PAT_FL_01
  @Manual
  @User_Interface
  @UAT_AUTO
  @UAT_AUTO_INITIAL_TRANSACTION
  @UAT_AUTO_INITIAL_TRANSACTION_PAT
  @today
  @UAT_AUTO_INITIAL_TRANSACTION_W5
  @w4AL
  @testw5_FL
  @Wave5_KS
  @W5_Murty
  @W5Y
  @W5_PAT_SPA

  Scenario Outline: <TCName> - [RL0] Author PAT contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site

    #Draft
    And I am using the "<TCName>" data from "<paperType>_SE.csv" of "<site>" and paper type "<paperType>"
    And I enter PES Inputs
    And I enter PES Responses
    And I select Market Number
    And I enter Request For Participation Response
    And I enter Document Selection
    And I preview Provider Details
    And I enter Practice Locations for PAT Contract
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
      #Approval
   # And I Approve Payment Appendix
      #Final Capture Cont.
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
      | site          | paperType     | TCName            |
      | southeast uhn | PAT           | W5_TC_SE_PAT_FL_01|


  @W5_TC_SE_PAT_FL_01
  @Manual
  @User_Interface
  @UAT_AUTO_AMENDMENT
  @PAT_AMENDMENT_Migration
  @UAT_AUTO_AMENDMENT_TEST_PAT
  @SPA_SE_AMEND
  @W5_PAT_SPA_MC


  Scenario Outline: <TCName> - [RL0] Amend <paperType> contract in <site>
    Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
    And I am using the "<TCName>" data from "<paperType>_SE.csv" of "<site>" and paper type "<paperType>"

    #Make a correction - Add provider with Make a correction.
    And I click Make Correction
    And I enter Market Exception Grid in Make Correction
    And I enter Market Exception Grid
    And I add provider using TIN
    And I select Providers
    And I enter Provider Start Date
    And I enter retro code in Provider Roster
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard

      #Amendment CMD Checking
    And I Verify CMD and Capture Status

    Examples:
      | site          | paperType     | TCName|
      | southeast uhn   | PAT          | W5_TC_SE_PAT_FL_01|

  @W5_TC_SE_PAT_FL_01
  @Manual
  @User_Interface
  @UAT_AUTO_AMENDMENT
  @SPA_AMENDMENT_Migration
  @UAT_AUTO_AMENDMENT_TEST_PAT
  @SPA_SE_AMEND
  @W5_PAT_SPA_amed



  Scenario Outline: <TCName> - [RL0] Amend <paperType> contract in <site>
    Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
    And I am using the "<TCName>" data from "<paperType>_SE.csv" of "<site>" and paper type "<paperType>"


     #Draft Amandament
    And I select the contract
    And I click on Create Amendment
    And I enter title
    And I enter Amendment Selection
    And I select Amendments needed in Amendment Selection
    And I select Amendment Type in Provider Details
    And I check Provider Details
    And I select Types of Amendments
    And I select Contract Applied in Amendments
    And I enter Contract Details in Amendments
    And I enter Appendix 2 in Amendments
    And I select applied Payment Appendix
    And I choose Additional Manuals
    And I enter Steerage
    And I enter Payment Appendix Amendments in Spga Contracts
    And I enter FeeScheduleID in Payment Appendix
    And I enter Regulatory Appendices
    And I enter Group Summary
    And I Complete Wizard



#Final Capture Amendment
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Set Status as Final Pending QA in Amendment
    And I Start Final Capture
    And I enter Provider Signatory in Amendment
    And I enter Our Signatory in Amendment
    And I enter Payment Appendix Amendments in Spga Contracts
    And I enter Appendix 2 in Amendments FinalCapture
    And I preview Provider Details
    And I enter Payment Appendix in Amendments FinalCapture
    And I enter Group Summary
    And I Complete Wizard

    #Activating Amendment
    And I Set Status as Active in Amendment

#CMD Checking
    And I Verify CMD and Capture Status

    Examples:
      | site          | paperType     | TCName|
      | southeast uhn   | PAT          | W5_TC_SE_PAT_FL_01|




