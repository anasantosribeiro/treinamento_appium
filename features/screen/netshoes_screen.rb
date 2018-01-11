class NetshoesScreen
    def initialize
      @layout_name = 'home_layout'
      @departamentos = 'department_label'
      @verificar_categorias = 'tvCategoryName'
      @menus = 'submenu_name'
      @produto = 'product_item'
      @produto_no_carrinho = 'tvProductTitle'

    end

    def verifica_home
        wait_for_element(id: @layout_name)
    end

    def tocar_departamentos
        wait_for_click(id: @departamentos)
    end

    def verificar_categorias
        find_element(id: @verificar_categorias)
    end

    def tocar_categoria_mulheres
        find_elements(id: @verificar_categorias)[1].click
    end

    def verificar_menus
        find_elements(id: @menus)
    end

    def tocar_produto
        find_element(id: @produto).click
    end

    def tocar_comprar
        sleep 0.5
        find_elements(class: 'android.widget.TextView').text('COMPRAR').click
    end

    def tocar_ver_carrinho 
        sleep 0.5
        find_elements(class: 'android.widget.TextView').text('Ver Carrinho').click
    end

    def ver_produto_no_carrinho
        find_element(id: @produto_no_carrinho).displayed?
    end
end