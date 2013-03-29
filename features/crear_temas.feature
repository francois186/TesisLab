Feature:

  Scenario Outline: : Create Commitment
    Given I am on crear_tema
    And I fill in "Nombre" with <nombre>
    And I fill in "Descripcion" with <descripcion>
    When I press "Crear Tema"
    Then I should be on tema_creado
    And I should see "El tema fue creado exitosamente"

   Examples:
    |nombre|descripcion|
    |"Tema 1"|"Descripcion1"|
    |"Tema 2"|"Descripcion2"|
    |"Tema 3"|"Descripcion3"|
    |"Tema 4"|"Descripcion4"|
    |"Tema 5"|"Descripcion5"|
