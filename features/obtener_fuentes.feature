Feature: Consult my bibliography
  As a student
  I want to consult my thesis bibligraphy
  So that I can remember it and obtain it anytime i need it

  Scenario: Consult bibliography
    Given I am on revisar_fuente
    When I click "Obtener Bibliografía"
    Then I should be on bibliografia
    And I should see "autor1(2012)"

