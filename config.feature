Feature: Configurar produto e Adicionar ao carrinho
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho


Background: 
Given Dado que esteja na pagina de um produto

Scenario: Limitar quantidade de produtos por venda
When eu adicionar 11 produtos ao carrinho
Then o sistema deve exibir uma mensagem de erro indicando que o limite maximo e 10 produtos

Scenario: Limpar selecao
When eu clicar no botao "Limpar"
Then o sistema deve retornar ao estado inicial da configurao do produto

Scenario: Remover produto do carrinho
Given que eu adicionei um produto ao carrinho
When eu clico no botao "remover" do produto
Then o produto deve ser removido do carrinho
And o preco total do carrinho deve ser atualizado


Scenario Outline: Selecao obrigatorias
When eu nao selecionar <atributo>
Then o sistema deve exibir uma mensagem de erro indicando que <atributo> e obrigatório

Examples:
    | atributo  | 
    | cor       |
    | tamanho   | 
    |quantidade |  


