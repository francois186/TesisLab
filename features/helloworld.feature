Feature: Hello World Feature
  In order to ensure that my installation works
  As a Developer
  I want to run a quick Cucumber test

  Scenario Outline: Hello World Scenario
    Given The Action is <action>
    When The Subject is <subject>
    Then The Greeting is <greeting>
  Examples:
    | action | subject | greeting     |
    | Hello  | World   | Hello, World |