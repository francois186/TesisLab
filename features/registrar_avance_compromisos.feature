Feature: set progress of a commitment
  As a student
  I want set the progress of a commitment
  So I can see the progress of my commitments

  Scenario Outline: Set progress
    Given I am on <page_name>
    When I click "Consultar Compromisos"
    Then I should be on revisar_compromisos
    And I should see "algo"
    And I should see "un compromiso"
    And I should see "Estudiante: similique rem"
    When I click "Registrar avance"
    Then I should be on registrar_avance
    And I should see "compromiso1"
    And I fill in "Avance" with "50"
    And I fill in "Descripcion" with "Descripcion de avance"
    When I press "Registrar avance"
    Then I should be on Avance registrado


  Examples:
    | page_name |
    |registrar_fuente  |
    |revisar_compromisos|
    |revisar_fuente     |

