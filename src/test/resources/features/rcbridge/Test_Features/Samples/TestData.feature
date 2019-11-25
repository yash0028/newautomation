# Last updated on
@releaseUnknown
@iterationUnknown
Feature: SPGA Business Testcases_IN
  
  @Manual
  @User_Interface  
  Scenario Outline: TC_CEN_SPGA_IN_05 - [RL0] Author SPGA contract in <site>  
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
    And I enter Market Strategy Grid
    And I enter Appendix 2
    And I enter Payment Appendix
    And I enter Additional Locations
    And I enter Regulatory Appendices
    And I select Provider Roster as None
    And I enter Amendments
    And I enter Group Summary
    #Then I Complete Wizard
    
    
		
    
    Examples:    
       | site          | paperType     | TCName|  				 
#       | central uhn   | SPGA          | TC_CEN_SPGA_IN_05|
#       | central uhn   | SPGA          | TC_CEN_SPGA_IN_10|
#       | central uhn   | SPGA          | TC_CEN_SPGA_IN_15|
#       | central uhn   | SPGA          | TC_CEN_SPGA_IN_18|
#       | central uhn   | SPGA          | TC_CEN_SPGA_IN_23|
#       | central uhn   | SPGA          | TC_CEN_SPGA_IN_28|
#       | central uhn   | SPGA          | TC_CEN_SPGA_IN_38|
#       | central uhn   | SPGA          | TC_CEN_SPGA_IN_41|
#       | central uhn   | SPGA          | TC_CEN_SPGA_IN_56|
#       | central uhn   | SPGA          | TC_CEN_SPGA_IN_61|
#       | central uhn   | SPGA          | TC_CEN_SPGA_IN_66|
#       | central uhn   | SPGA          | TC_CEN_SPGA_IN_69|
#       | central uhn   | SPGA          | TC_CEN_SPGA_IN_74|
#       | central uhn   | PAT          | TC_CEN_PAT_IN_04|
#		| central uhn   | PAT          |TC_CEN_PAT_IN_09|
#		| central uhn   | PAT          |TC_CEN_PAT_IN_13|
#		| central uhn   | PAT          |TC_CEN_PAT_IN_22|
#		| central uhn   | PAT          |TC_CEN_PAT_IN_55|
#		| central uhn   | PAT          |TC_CEN_PAT_IN_60|
#		| central uhn   | PAT          |TC_CEN_PAT_IN_64|
#		| central uhn   | PAT          |TC_CEN_PAT_IN_73|
#		| central uhn   | PAT          |TC_CEN_PAT_IN_50|
		| central uhn   | SMGA          |TC_CEN_SMGA_IN_03|
		| central uhn   | SMGA          |TC_CEN_SMGA_IN_08|
		| central uhn   | SMGA          |TC_CEN_SMGA_IN_12|
		| central uhn   | SMGA          |TC_CEN_SMGA_IN_17|
		| central uhn   | SMGA          |TC_CEN_SMGA_IN_21|
		| central uhn   | SMGA          |TC_CEN_SMGA_IN_26|
		| central uhn   | SMGA          |TC_CEN_SMGA_IN_40|
		| central uhn   | SMGA          |TC_CEN_SMGA_IN_54|
		| central uhn   | SMGA          |TC_CEN_SMGA_IN_59|
		| central uhn   | SMGA          |TC_CEN_SMGA_IN_63|
		| central uhn   | SMGA          |TC_CEN_SMGA_IN_68|
		| central uhn   | SMGA          |TC_CEN_SMGA_IN_72|
		| central uhn   | SMGA          |TC_CEN_SMGA_IN_78|
