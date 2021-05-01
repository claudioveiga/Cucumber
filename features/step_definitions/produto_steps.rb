    Então('o seguinte produto será validado {string}') do |produto|
        expect(@login.text_user.text).to include("standard_user")
    end
  
    Então('o preço do produto será validado {string}') do |preco|
        pending # Write code here that turns the phrase above into concrete actions
    end
  
    Quando('clico no botão de filtros') do
        pending # Write code here that turns the phrase above into concrete actions
    end
  
    Quando('opto pelo filtro {string}') do |string|
        pending # Write code here that turns the phrase above into concrete actions
    end
  
    Entao('o primeiro produto será {string}') do |string|
        pending # Write code here that turns the phrase above into concrete actions
    end