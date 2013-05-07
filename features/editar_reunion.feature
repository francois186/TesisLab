Feature: Un usuario podrá editar una reunion

  Scenario: Un usuario ingresa a una reunion y la edita
    Given I am on revisar_reuniones
    And I click the first "Editar reunión"
    And I fill in "Resumen" with "Resumen de ejemplo"
    When I press "Guardar acta de reunion"
    And I should be on revisar_reuniones
    And I should see "Resumen de ejemplo"

#  Examples:
#    |page_name|nombre_tag|
#    |revisar_reuniones|nombre_tag_1|
#    |revisar_compromisos|nombre_tag2|
#    |revisar_compromisos_estudiante|nombre_tag3|
#    |listar_entregables            |nombre_tag4|
#    |revisar_reuniones             |nombre_tag5|
#    |revisar_reuniones             |nombre_tag5|
