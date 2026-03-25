# Testes de API - ViaCEP

## Objetivo
Validar o funcionamento da API ViaCEP através de cenários de testes funcionais.

## API utilizada
https://viacep.com.br/

## Estratégia de Teste

Os cenários foram definidos considerando:
- Caminho feliz (fluxo principal)
- Variações de entrada (fluxo alternativo)
- Tratamento de erro (fluxos de exceção)

## Casos de Teste

- Fluxo básico: CEP válido
- Fluxo alternativo: CEP com e sem hífen
- Fluxo de exceção:
  - CEP inválido
  - Formato inválido

## Execução dos Testes

Os testes podem ser executados via Postman importando a collection presente no repositório.

## Evidências

As evidências da execução dos testes estão disponíveis na pasta /evidencias.

## Collection Postman

A collection com as requisições e testes automatizados está disponível no repositório.

## Tecnologias
- Gherkin
