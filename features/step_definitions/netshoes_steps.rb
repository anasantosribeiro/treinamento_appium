Dado(/^que estou na tela inicial do app$/) do
  @netshoes = NetshoesScreen.new
  fail "Não estou na home" unless @netshoes.verifica_home 

end

Quando(/^tocar em navegue pelos departamentos$/) do
  @netshoes.tocar_departamentos
end

Entao(/^devo ver os departamentos$/) do
  @netshoes.verificar_categorias
end

Dado(/^que estou na tela de departamentos$/) do
  steps '
    E que estou na tela inicial do app
    E tocar em navegue pelos departamentos
    E devo ver os departamentos
  '
  
end

Quando(/^tocar em mulheres$/) do
  @netshoes.tocar_categoria_mulheres
end

Então(/^devo ver as opções de busca$/) do
  @netshoes.verificar_menus
end

Dado(/^tocar no primeiro produto da lista$/) do
  @netshoes.tocar_produto
end

Dado(/^tocar em comprar$/) do
  @netshoes.tocar_comprar
end

Quando(/^tocar em ver carrinho$/) do
  @netshoes.tocar_ver_carrinho
end

Então(/^devo ver o produto adicionado ao carrinho$/) do
  @netshoes.ver_produto_no_carrinho
end