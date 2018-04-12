@producer
Feature: being able to send messages to the 'employee' Kafka topic through the SpringProducerDemo project

  Scenario Outline: Creating valid messages with various employee data
    Given a connection to Kafka on localhost
    When a POST request is sent to <url> with json containing <id>, <firstname>, <lastname>, <title>, and <location>
    Then response code <code> should be received

    Examples:

      | url                               | id | firstname | lastname | title               | location | code |
      | "http://localhost:8080/employees" | 1  | "Joe"     | "Wacker" | "QE"                | "MN"     | 201  |
      | "http://localhost:8080/employees" | 2  | "Alex"    | "Berns"  | "QE"                | "MN"     | 201  |
      | "http://localhost:8080/employees" | 3  | "Tien"    | "Bui"    | "Scrum Master / QE" | "MN"     | 201  |