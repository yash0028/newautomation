Feature: Login Page of yatra
Scenario: Validate login page

Given User opens browser


Then Submit username and password
Then click Login
Then homepage is displaed
