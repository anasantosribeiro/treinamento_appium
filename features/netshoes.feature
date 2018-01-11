# language: pt

Funcionalidade: Buscar produtos

Eu como usuário desejo buscar produtos por departamentos
para poder realizar uma compra

Cenário: Acessar departamentos

    Dado que estou na tela inicial do app
    Quando tocar em navegue pelos departamentos
    Entao devo ver os departamentos

Cenário: Realizar uma busca por departamento de mulheres

    Dado que estou na tela de departamentos
    Quando tocar em mulheres
    Então devo ver as opções de busca 

Cenário: Posso adicionar um produto ao carrinho

    Dado que estou na tela inicial do app
    E tocar no primeiro produto da lista
    E tocar em comprar
    Quando tocar em ver carrinho 
    Então devo ver o produto adicionado ao carrinho 