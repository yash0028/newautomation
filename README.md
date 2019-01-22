# acceptance-testing

This is the main project for CLM acceptance testing automation. It uses the Cucumber testing framework to test acceptance tests written in CA Agile Central.


This repo is used on Jenkins by the job titled "acceptance-testing-param" where it takes in the service name and tags as parameters to build this repo using gradle.

## Running Locally via Gradle

To run tests locally using gradle, open terminal in IntelliJ and use the following command:

`gradlew test -PcucumberTags="@tags"`

If on Mac, you need to append `./` to the command as follows:

`./gradlew test -PcucumberTags="@tags"`

You can also supply multiple tags using the following format:

`./gradlew test -PcucumberTags="@tags and @more_tags or (@this_tag and @that_tag)"`

## Common Folders / Locations

#### Feature Files

* RC-Bridge will pull any acceptance criteria from Agile Central and place the created Feature files into the **src/test/resources/features/rcbridge** folder.

* Cucumber feature files can also be written locally (If they are not in Rally/CA Agile Central) in the **src/test/resources/features/local** folder.

#### Step Definition Files

Step Definition files are split into different packages depending on what type of tests they are

* _General_ tests are located in **src/test/java/general_test/step**
* _REST API_ tests are located in **src/test/java/rest_api_test/step**
* _UI_ tests are located in **src/test/java/ui_test/step**
