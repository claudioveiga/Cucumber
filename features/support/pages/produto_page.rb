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
            def cardPeloNome(nomeProduto)
                #cardPeloNome("Sauce Labs Onesie")

                cardsLista = driver.find_elements(:css, '#inventory_container > .inventory_list > .inventory_item')
                #identificou todos os elementos que contem este mesmo seletor
                #que no caso são os cards da página produto

                case nomeProduto
                    when "Sauce Labs Backpack"
                        return cardsLista[0]
                    
                    when "Sauce Labs Bike Light"
                        return cardsLista[1]

                    when "Sauce Labs Bolt T-Shirt"
                        return cardsLista[2]

                    when "Sauce Labs Fleece Jacket"
                        return cardsLista[3]

                    when "Sauce Labs Onesie"
                        return cardsLista[4]
                    #para "Sauce Labs Onesie" retornará o elemento no index 4
                    #do cardLista, ou seja, o elemento do card "Sauce Labs Onesie"

                    when "Test.allTheThings() T-Shirt (Red)"
                        return cardsLista[5]
                end
            end

            def todoCard(cardNome, ordem)
                #cardNome = "Sauce Labs Onesie"
                #ordem = "descricao"

                cardEscolhido = cardPeloNome(cardNome)
                #cardEscolhido = cardPeloNome("Sauce Labs Onesie")
                #-> codigo indo para o metodo cardPeloNome com o valor cardNome 
                #que vale "Sauce Labs Onesie"
                #card retornando com o valor de elemento correspondente ao card
                # "Sauce Labs Onesie"

                case ordem
                    when "textoLink"
                        cardEscolhido.find_element(:css, ".inventory_name").text
                    
                    when "clicarLink"
                        cardEscolhido.find_element(:css, ".inventory_name").click

                    when "descricao"
                        cardEscolhido.find_element(:css, ".inventory_item_desc").text
                        # cardEscolhido.find_element -> procurará um elemento dentro 
                        #de um elemento neste exemplo estará procurando a descrição 
                        #dentro do elemento correspondente ao "Sauce Labs Onesie"

                    when "preco"
                        cardEscolhido.find_element(:css, ".inventory_item_price").text
                    
                    when "addRemove"
                        cardEscolhido.find_element(:css, ".btn").click
                end
            end
 
        #end
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
