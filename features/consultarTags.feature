Feature: Un usuario podrá buscar todo lo relacionado con un tag específico

  Scenario Outline: Consultar toda la informacion relacioanda a un Tag (y el caso contrario)
    Given I am on <page_name>
    And I fill in "<nombre_tag>" for "Dar tags"
    When I press "Buscar"
    Then I should be on <page_name1>
    And I should see "<nombre_tag>"
    And I should see "<info>"

  Examples:
    |page_name|nombre_tag|page_name1|info|
    |nombre_pagina_consultar_tag|nombre_tag_1|nombre_de_la_pagina_de_resultados|resultado_afirmativo|
    |nombre_pagina_consultar_tag|nombre_tag_2|nombre_de_la_pagina_de_resultados|resultado_afirmativo|
    |nombre_pagina_consultar_tag|nombre_tag_3|nombre_de_la_pagina_de_resultados|resultado_afirmativo|
    |nombre_pagina_consultar_tag|nombre_tag_4|nombre_de_la_pagina_de_resultados|resultado_negativo|
    |nombre_pagina_consultar_tag|nombre_tag_5|nombre_de_la_pagina_de_resultados|resultado_negativo|
    |nombre_pagina_consultar_tag|nombre_tag_6|nombre_de_la_pagina_de_resultados|resultado_negativo|