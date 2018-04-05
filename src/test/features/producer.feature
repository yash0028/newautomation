@producer
Feature: being able to send messages to the 'employee' Kafka topic through the SpringProducerDemo project

  Scenario Outline: Creating messages with various employee data
    Given a connection to Kafka
    When a POST request is sent to <url> with json containing <id>, <firstname>, <lastname>, <title>, <location>, and <organization>
    Then response code <code> should be received

    Examples:

      | url                               | id | firstname | lastname | title               | location | organization | code |
      | "http://localhost:8080/employees" | 1  | "Joe"     | "Wacker" | "QE"                | "MN"     | "CLM"        | 200  |
      | "http://localhost:8080/employees" | 2  | "Alex"    | "Berns"  | "QE"                | "MN"     | "CLM"        | 200  |
      | "http://localhost:8080/employees" | 3  | "Tien"    | "Bui"    | "Scrum Master / QE" | "MN"     | "CLM"        | 200  |