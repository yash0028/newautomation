Feature: Playground

  @PG
  Scenario Outline: Example of Map value substitution
    Then I do something
      | Right  | ""           |
      | Left   | EMPTY_STRING |
      | Center | <subA>       |

    Examples:
      | subA                     |
      | A value is not the worst |
      | ""                       |
