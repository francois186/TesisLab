Feature: Consult my bibliography
  As a student
  I want to consult my thesis bibligraphy
  So that I can remember it and obtain it anytime i need it

Scenario Outline: Consult bibliography
  Given I am on <page_name>
  When I click "Ver Fuentes"
  Then I should be on revisar_fuente
  And I should see "autor1"
  And I should see "libro1"
  And I should see "resumen del libro 1"
  And I should see "www.libro1.com"
  And I should see "2001-02-03"

Examples:
  | page_name |
  |registrar_fuente  |
  |revisar_compromisos|
  |revisar_fuente     |

