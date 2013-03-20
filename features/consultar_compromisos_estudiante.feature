Feature: Consult my bibliography
  As a student
  I want to consult my commitments
  So that I can remember and check what I have to do

  Scenario Outline: Consult commitment
    Given I am on <page_name>
    When I go to revisar_compromisos_estudiante
    Then I should be on revisar_compromisos_estudiante
    And I should see "Compromiso numero 1"
    And I should see "Contenido numero 1"


  Examples:
    | page_name |
    |registrar_fuente  |
    |revisar_compromisos|
    |revisar_fuente     |

