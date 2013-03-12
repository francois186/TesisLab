Feature: Consult my meetings
  As a student
  I want to consult my thesis's meetings
  So that I can remember what happened in each one

  Scenario Outline: Consult meetings
    Given I am on <page_name>
    When I click "Ver Reuniones"
    Then I should be on revisar_reuniones
    And I should see "Fecha"
    And I should see "Resumen"
    And I should see "Conclusiones"

  Examples:
    | page_name |
    |registrar_fuente  |
    |revisar_compromisos|
    |revisar_fuente     |

