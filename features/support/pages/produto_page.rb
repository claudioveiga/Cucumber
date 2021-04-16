require_relative('./base_page.rb')

class ProdutoPage < BasePage
    attr_accessor :driver
    def initialize(webDriver)
        @driver = webDriver
    end

    # Mapeamento

        #Título Produtos

            def box_header
                driver.find_element(:css, '#header_container')
            end

            def text_tituloProduto
                box_header.find_element(:css, '#header_container > div.header_secondary_container > span')
            end
            
        #end
        
    #Produtos

        # Link de acesso ao item backpack
            def link_item1
                driver.find_element(:css, '#item_4_title_link > div')
            end
        #end

        # Texto descritivo do item backpack
            def text_descItem1
                driver.find_element(:css, 'div.inventory_list > div:nth-child(1) div.inventory_item_label > div')
            end
        #end

        # Preço do item backpack
            def text_priceItem1
                driver.find_element(:css, 'div.inventory_list > div:nth-child(1) div.pricebar > div')
            end
        #end

        # Botão de adicionar/ remover do item backpack
            def btn_addRemItem1
                driver.find_element(:css, 'div.inventory_list > div:nth-child(1) button')
            end
        #end


        # Link de acesso ao item Bike Light
            def link_Item2
                driver.find_element(:css, '#item_0_title_link > div')
            end
        #end

        # Texto descritivo do item Bike Light
            def text_descItem2
                driver.find_element(:css, 'div.inventory_list > div:nth-child(2) div.inventory_item_label > div')
            end
        #end

        # Preço do item Bike Light
            def text_priceItem2
                driver.find_element(:css, 'div.inventory_list > div:nth-child(2) div.pricebar > div')
            end
        #end

        # Botão de adicionar/ remover do item Bike Light
            def btn_addRemItem2
                driver.find_element(:css, 'div.inventory_list > div:nth-child(2) div.pricebar > button')
            end
        #end

            
        # Link de acesso ao item Bolt T-Shirt
            def link_Item3
                driver.find_element(:css, '#item_1_title_link > div')
            end
        #end

        # Texto descritivo do item T-Shirt
            def text_descItem3
                driver.find_element(:css, 'div.inventory_list > div:nth-child(3) div.inventory_item_label > div')
            end
        #end

        # Preço do item T-Shirt
            def text_priceItem3
                driver.find_element(:css, 'div.inventory_list > div:nth-child(3) div.pricebar > div')
            end
        #end

        # Botão de adicionar/ remover do item T-Shirt
            def btn_addRemItem3
                driver.find_element(:css, 'div.inventory_list > div:nth-child(3) div.pricebar > button')
            end
        #end


        # Link de acesso ao item Item4
            def link_Item4
                driver.find_element(:css, '#item_5_title_link > div')
            end
        #end

        # Texto descritivo do item Item4
            def text_descItem4
                driver.find_element(:css, 'div.inventory_list > div:nth-child(4) div.inventory_item_label > div')
            end
        #end

        # Preço do item Item4
            def text_priceItem4
                driver.find_element(:css, 'div.inventory_list > div:nth-child(4) div.pricebar > div')
            end
        #end

        # Botão de adicionar/ remover do item Item4
            def btn_addRemItem4
                driver.find_element(:css, 'div.inventory_list > div:nth-child(4) div.pricebar > button')
            end
        #end


        # Link de acesso ao item Item5
            def link_Item5
                driver.find_element(:css, '#item_2_title_link > div')
            end
        #end

        # Texto descritivo do item Item5
            def text_descItem5
                driver.find_element(:css, 'div.inventory_list > div:nth-child(5) div.inventory_item_label > div')
            end
        #end

        # Preço do item Item5
            def text_priceItem5
                driver.find_element(:css, 'div.inventory_list > div:nth-child(5) div.pricebar > div')
            end
        #end
        
        # Botão de adicionar/ remover do item Item5
            def btn_addRemItem5
                driver.find_element(:css, 'div.inventory_list > div:nth-child(5) div.pricebar > button')
            end
        #end


        # Link de acesso ao item Red T-shirt
            def link_Item6
                driver.find_element(:css, '#item_3_title_link > div')
            end
        #end

        # Texto descritivo do item Red T-shirt
            def text_descItem6
                driver.find_element(:css, 'div.inventory_list > div:nth-child(6) div.inventory_item_label > div')
            end
        #end

        # Preço do item Red T-shirt
            def text_priceItem6
                driver.find_element(:css, 'div.inventory_list > div:nth-child(6) div.pricebar > div')
            end
        #end

        # Botão de adicionar/ remover do item Red T-shirt
            def btn_addRemItem6
                driver.find_element(:css, 'div.inventory_list > div:nth-child(6) div.pricebar > button')
            end
        #end


        # Clicando na opção de Filtros 
            #e escolhendo uma opção
                def dbox_filterProducts #dbox para indicar um combobox
                    driver.find_element(:css, '#inventory_filter_container > select')
                end
                             
                def dbox_aZFilter
                    driver.find_element(:css, '[value="az"]')
                end

                def dbox_zAFilter
                    driver.find_element(:css, '[value="za"]')
                end

                def dbox_priceLowFilter
                    driver.find_element(:css, '[value="lohi"]')
                end

                def dbox_priceHighFilter
                    driver.find_element(:css, '[value="hilo"]')
                end

            #end
        # end

    # Metodos
    
        def filterBy(option)
            box_filter.click
            sleep 1
             
            case option
                when "A a Z"
                    dbox_aZFilter.click
    
                when "Z a A"
                    dbox_zAFilter.click
                        
                when "Menor preco"
                    dbox_priceLowFilter.click
    
                when "Maior preco"
                    dbox_priceHighFilter.click
    
                else 
                    puts "Nenhuma opção encontrada"
    
            end
        end

    #end

    # Adicionando os itens

        def addToCartItem1()
            btn_addRemItem1.click()
        end

        def addToCartItem4()
            btn_addRemItem4.click()
        end

        def addToCartItem5()
            btn_addRemItem5.click()
        end

    #end

    #Acessando os itens

        def acessarItem1()
            link_backpack.click()
        end

        def acessarItem2()
            link_Item2.click()
        end

        def acessarItem3()
            link_Item3.click()
        end

        def acessarItem4()
            link_Item4.click()
        end

        def acessarItem5()
            link_Item5.click()
        end 

        def acessarRedItem3()
            link_Item6.click()
        end

    #end


end
