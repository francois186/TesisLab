Feature:

  Scenario Outline: : Assign theme
    Given I am on <page_name>
    And I fill in "Tema" with <tema_name>
    And I fill in "Fuente" with <fuente>
    When I press "Submit"
    Then I should be on temas_creado
    And I should see "Tema creado exitosamente"
    
  Examples:
  |page_name|tema_name| fuente|
  |"/temas/add"|"Tema 1"|"Fuente1"|
