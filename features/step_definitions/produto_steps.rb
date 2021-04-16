    Então('faremos a validação do título da página {string}') do |tituloPagina|
        expect(@produto.text_tituloProduto.text).to include("Products")
    end
  
    Então('os seguintes {string} serão validados') do |string|
        pending # Write code here that turns the phrase above into concrete actions
    end
  
    Então('o <preco> de cada um') do
        pending # Write code here that turns the phrase above into concrete actions
    end

    Quando('clico no botão de filtros') do
        pending # Write code here that turns the phrase above into concrete actions
    end

    Quando('opto pelo {string}') do |string|
        pending # Write code here that turns the phrase above into concrete actions
    end

    Entao('o primeiro produto será {string}') do |string|
        pending # Write code here that turns the phrase above into concrete actions
    end