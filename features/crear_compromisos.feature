Feature:

Scenario: Create Commitment
Given I am on crear_compromiso
And I fill in "Titulo" with "Revisar entregable"
And I fill in "Contenido" with "Revisar los entregables de la semana pasada"
And I select "June 7, 2018" as the compromiso "FECHA_CIERRE" date
And I select "June 7, 2018" as the compromiso "FECHA_COMPROMETIDA" date
When I press "Crear compromiso"
Then I should be on revisar_compromisos
And I should see "Revisar entregable"
And I should see "Revisar los entregables de la semana pasada"

