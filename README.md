# acceptance-testing

This is the main project for CLM acceptance testing automation. It uses the Cucumber testing framework to test acceptance tests written in CA Agile Central.

RC-Bridge will pull any acceptance criteria from Agile Central and place any created Feature files into the src/test/features folder.

This project should be nested as a subtree inside of any repository that will have acceptance tests run against it.

All Feature files and Step Definition files should be written in this project, then pulled down from any parent repository when needed.

## Creating a Subtree

To nest this as a subtree into another repository, do the following: 

1. Clone the repository that will be the parent

2. Change into the root directory of the parent project

3. Type the following command to add the subtree:
    ```git
    git subtree add --prefix=src/acceptance-test https://github.optum.com/Contract-Lifecycle-Management/acceptance-testing.git master --squash
    ```
    
## Pulling Subtree Changes

Whenever the root project is updated, you will need to pull the changes from the parent project.

1. Change into the parent project's directory

2. Type the following command: 
    ```git
    git subtree pull --prefix=src/acceptance-test https://github.optum.com/Contract-Lifecycle-Management/acceptance-testing.git master --squash
    ```

## Pushing Subtree Changes

Changes to the subtree can be pushed to the root subtree branch by doing the following:

1. Change into the parent project's directory

2. Type the following command:
    ```git
    git subtree push --prefix=src/acceptance-test https://github.optum.com/Contract-Lifecycle-Management/acceptance-testing.git master
    ```