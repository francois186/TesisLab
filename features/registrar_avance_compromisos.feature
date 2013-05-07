Feature: set progress of a commitment
  As a student
  I want set the progress of a commitment
  So I can see the progress of my commitments

  Scenario Outline: Set progress
    Given I am on <page_name>
    When I click "Consultar Compromisos"
    Then I should be on revisar_compromisos
    And I should see "Estudiante:"
    When I click the first "Registrar avance"
    Then I should be on registrar_avance
    And I should see "Titulo"
    And I fill in "Avance" with "50"
    And I fill in "compromiso OBSERVACIONES AVANCE" with "Descripcion de avance"
    When I press "Registrar avance"
    Then I should be on revisar_compromisos


  Examples:
    | page_name |
    |registrar_fuente  |
    |revisar_compromisos|
    |revisar_fuente     |

