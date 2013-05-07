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
    | archivos | Video   | C:\Users\asistente\Desktop\Video.mp4 | archivosListo | El archivo se subió con éxito |
    | archivos | Audio  | C:\Users\asistente\Desktop\Audio.wav  | archivosListo | El archivo se subió con éxito |
    | archivos | Excel   | C:\Users\asistente\Desktop\Excel.xlsx| archivosListo | El archivo se subió con éxito |
    | archivos | Imagen   | C:\Users\asistente\Desktop\Imagen.bmp| archivosListo | El archivo se subió con éxito |
