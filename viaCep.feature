API escolhida: ViaCEP

Endpoint: GET https://viacep.com.br/ws/{cep}/json/

Casos de Teste (Gherkin)

Caso de Teste 1 – Fluxo básico (positivo)

Cenário: Buscar endereço com CEP válido sem hífen

Dado que possuo um CEP válido de número "74650-170"
Quando eu realizar uma requisição GET para "/ws/74650170/json/"
Então a resposta deve ter status code 200
E o campo "cep" deve ser "74650-170"
E o campo "logradouro" deve estar preenchido
E o campo "localidade" deve ser "Goiânia"
E o campo "uf" deve ser "GO"


Caso de Teste 2 – Fluxo alternativo (positivo)

Cenário: Buscar endereço com CEP válido com hífen

Dado que possuo um CEP válido "74003-010" com hífen
Quando eu realizar uma requisição GET para "/ws/74003-010/json/"
Então a resposta deve ter status code 200
E o campo "cep" deve ser "74003-010"
E o campo "logradouro" deve estar preenchido
E o campo "localidade" deve ser "Goiânia"
E o campo "uf" deve ser "GO"


Caso de Teste 3 – Fluxo de exceção (negativo)

Cenário: Consulta de CEP inválido

Dado que possuo um CEP inválido "00000000"
Quando eu realizar uma requisição GET para "/ws/00000000/json/"
Então a resposta deve ter status code 200
E o campo "erro" deve ser verdadeiro


Caso de Teste 4 – Fluxo de exceção (input inválido)

Cenário: Buscar CEP com formato inválido

Dado que possuo um CEP em formato inválido "ABC12345"
Quando eu realizar uma requisição GET para "/ws/ABC12345/json/"
Então a API deve retornar erro (status code 400) ou comportamento de falha esperado
