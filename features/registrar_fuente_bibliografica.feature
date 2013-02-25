Feature: A user can save a book's reference

  Scenario Outline: Registrar una fuente bibliografica
    Given I am on <page_name>
    And I fill in "<autor_field>" with "<autor>"
    And I fill in "<url_field>" with "<url>"
    And I fill in "<libro_field>" with "<libro>"
    And I fill in "<resumen_field>" with "<resumen>"
    When I press "<button>"
    Then I should be on <page_name1>
    And I should see "<text>"

  Examples:
    | page_name    | autor_field | autor | url_field | url | libro_field | libro | resumen_field | resumen | button | page_name1   | text |
    | registrar_fuente | Autor | Gabriel Garcia | Url |  | Libro | 100 years | Resumen | No me sirve | Crear fuente bibliografica | revisar_fuente | Gabriel Garcia |

