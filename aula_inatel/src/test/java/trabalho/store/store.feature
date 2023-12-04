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
