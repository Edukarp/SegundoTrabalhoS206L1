Feature: Testando Fake Store API

  Background:
    * def url_base = 'https://fakestoreapi.com'
    * def request_json = read('json_store.json')

  Scenario: Criando um produto novo
    Given url url_base
    And path '/products'
    And request request_json
    When method POST
    Then status 200
    And match $.category == '#string'
    And match $.price == 37.90
    
  Scenario: Procurando um prouto pelo Id
    Given url url_base
    And path '/products/3'
    When method GET
    Then status 200
    And match $.title == '#string'
    And match $.price == '#number'
    
  Scenario: Deletando o produto 5
    Given url url_base
    And path '/products/5'
    When method DELETE
    Then status 200
    
  Scenario: Acessando um endereço que não existe
    Given url url_base
    And path '/cart'
    When method GET
    Then status 404
    
  Scenario: Verifiando se o carrinho 1 pertence ao usuario 1
    Given url url_base
    And path '/carts/1'
    When method GET
    Then status 200
    And match $.userId == 1
    
  Scenario: Tentando deletar um carrinho de ID invalido
    Given url url_base
    And path '/carts/a'
    When method DELETE
    Then status 400