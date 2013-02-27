Feature: Consult my bibliography
  As a student
  I want to consult my thesis bibligraphy
  So that I can remember it and obtain it anytime i need it

  Scenario Outline: Consult commitment
    Given I am on <page_name>
    When I click "Consultar Compromisos"
    Then I should be on revisar_compromisos
    And I should see "nombre1"
    And I should see "compromiso1"
    And I should see "contenido del compromiso 1"


  Examples:
    | page_name |
    |registrar_fuente  |
    |revisar_compromisos|
    |revisar_fuente     |

