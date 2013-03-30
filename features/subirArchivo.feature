Feature: El usuario puede subir un archivo de cualquier tipo

  Scenario Outline: Subir un archivo
    Given I am on <page_name>
    And I fill in "<nombre>" for "Nombre"
    And I attatch the file "<arch>" into "dataFile"
    When I press "Subir Archivo"
    And my current URL should be "<resultado>"
    And I should see "<resumen>"

  Examples:
    | page_name | nombre | arch | resultado | resumen |
    | archivos | Cancion | C:\Users\François\Desktop\09-dire-dire-docks.mp3 | archivosListo | El archivo se subió con éxito |
    | archivos | Imagen  | C:\Users\François\Desktop\final.bmp              | archivosListo | El archivo se subió con éxito |
    | archivos | PDF     | C:\Users\François\Desktop\modeloTesis.pdf        | archivosListo | El archivo se subió con éxito |

