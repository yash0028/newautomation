@PATBusinessTestcases_IN
@releaseUnknown
@iterationUnknown
Feature: PAT Business Testcases_IN
  @W2_TC_CEN_PAT_IN_22
  @Manual
  @User_Interface
  @UAT_AUTO
  @UAT_AUTO_INITIAL_TRANSACTION
  @UAT_AUTO_INITIAL_TRANSACTION_PAT
  Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site

    #Draft
    And I am using the "<TCName>" data from "<paperType>_CEN_IN.csv" of "<site>" and paper type "<paperType>"

    Examples:
      | site          | paperType     | TCName|
      | central uhn   | PAT          | W2_TC_CEN_PAT_IN_22|

