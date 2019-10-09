# Hive
Hive allows you to run several Exari Contract Creation sessions in parallel. Each contract you want to have Hive make must be defined in a csv file that contains the complete details for the contract. Each row of the csv is one contract that will be run. Ideally, you would make each row contain different information. To allow reusing the common flow of creating a contract, Hive uses a special json file called an Exari Interview Flow, for EIF for short.

Gradle will start Hive when you run the `hive` command. Hive itself will them read the `src/test/resources/configurations/hive.properties` file or env variables to determine to run.

## CSV files
As mentioned above, each row should contain different information. Complete details can be found in the `src/test/resources/support/hive/dataMap/README.md` file.

## EIF
An EIF file is a json file that contains an outline of the steps needed to create a contract. The order of these steps is flexible. For complete details, see `src/test/resources/support/exari/README.md`.