Feature: A user can save a book's reference

  Scenario Outline: Listar entregable
    Given I am on <page_name>
    When I click "<button>"
    Then I should be on <page_name1>


  Examples:
    | page_name    | button | page_name1   |
    | registrar_fuente | Ver entregables estudiante | listar_entregables |
    | revisar_fuente | Ver entregables estudiante | listar_entregables |
    | listar_entregables | Ver entregables estudiante | listar_entregables |

