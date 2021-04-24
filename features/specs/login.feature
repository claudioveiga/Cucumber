#language:pt
@login
Funcionalidade: Login

Como: um possível comprador
Quero: validar as funcionalidades da pagina de login
Para: testar as funções e erros de login

Contexto: Acessando a página SauceDemo
Quando acessar a página SauceDemo

    Cenario: Validando a página SauceDemo
    Então serei encaminhado para a página SauceDemo

    @login_certo
    Cenario: Login correto
    Quando efetuar o login com o usuário "standard_user"
    Então serei encaminhado para a página Products

    Cenario: Login errado
    Quando efetuar o login com a senha errada "senhaerrada" 
    Então o seguinte texto estará na página "Epic sadface: Username and password do not match any user in this service"

    Esquema do Cenario: Efetuando Logins alternativos
    Quando efetuar o login com o usuário <usuario>
    Então o seguinte texto estará na página <mensagem>
    Exemplos:
    | usuario                     | mensagem                                                |
    | "standard_user"             | "Products"                                              |
    | "locked_out_user"           | "Epic sadface: Sorry, this user has been locked out."   |
    | "performance_glitch_user"   | "Products"                                              |
    | "problem_user"              | "Products"                                              |

