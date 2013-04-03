Feature: El usuario profesor podrá crear actas de reunion para las tesis

  Scenario Outline: Registrar una fuente bibliografica
    Given I am on <page_name>
    And I fill in "<resumen>" for "Resumen"
    And I fill in "<conclusiones>" for "Conclusiones"
    When I press "Crear acta de reunion"
    Then I should be on <page_name1>
    And I should see "<resumen>"

  Examples:
    | page_name    | resumen |  conclusiones | page_name1|
    | crear_acta_reunion |  Nueva acta de reunion| Se deben revisar los datos del codigo nuevo| reuniones|

