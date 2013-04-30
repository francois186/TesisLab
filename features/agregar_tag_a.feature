Feature: Un usuario podrá agregarle un Tag a cualquier elemento relacioando con la Tesis

  Scenario Outline: Agregar un Tag
    Given I am on <page_name>
    And I click "Agregar Tag"
    And I fill in "<nombre_tag>" for "Tag"
    When I press "Agregar"
    And I should see "El tag se ha agregado correctamente"

  Examples:
    |page_name|nombre_tag|
    |revisar_fuente|nombre_tag_1|
    |revisar_compromisos|nombre_tag2|
    |revisar_compromisos_estudiante|nombre_tag3|
    |listar_entregables            |nombre_tag4|
    |revisar_reuniones             |nombre_tag5|
