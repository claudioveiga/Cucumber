

Quando('acessar a página SauceDemo') do
    @driver.navigate.to("https://www.saucedemo.com/")
end

Então('faremos a validação da página') do
    expect(@login.text_user.text).to include("standard_user")
    expect(@login.text_user.text).to include("locked_out_user")
    expect(@login.text_user.text).to include("problem_user")
    expect(@login.text_user.text).to include("performance_glitch_user")
    expect(@login.text_passw.text).to include("secret_sauce")
end

Quando('efetuar o login com o usuário {string}') do |nomeUsuario|
    @login.fazerLogin(nomeUsuario, "secret_sauce")
end

Quando('efetuar o login com a senha errada {string}') do |senhaErrada|
    @login.fazerLogin("standard_user", senhaErrada)
end

Então('o seguinte texto estará na página {string}') do |texto_testado|
    expect(@login.driver.page_source).to include(texto_testado)
end