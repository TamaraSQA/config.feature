#language: pt

Funcionalidade: Configurar produto e Adicionar ao carrinho
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho


Contexto: 
Dado que esteja na pagina de um produto

Cenario: Limitar quantidade de produtos por venda
Quando eu adicionar 11 produtos ao carrinho
Entao o sistema deve exibir uma mensagem de erro indicando que o limite maximo e 10 produtos

Cenario: Limpar selecao
Quando eu clicar no botao "Limpar"
Entao o sistema deve retornar ao estado inicial da configurao do produto

Cenario: Remover produto do carrinho
Dado que eu adicionei um produto ao carrinho
Quando eu clico no botao "remover" do produto
Entao o produto deve ser removido do carrinho
E o preco total do carrinho deve ser atualizado


Esquema do Cenario: Selecao obrigatorias
Quando eu nao selecionar <atributo>
Entao o sistema deve exibir uma mensagem de erro indicando que <atributo> e obrigatório

Exemplos:
    | atributo  | 
    | cor       |
    | tamanho   | 
    |quantidade |  


