Feature: Login 
As a usuário da plataforma de e-commerce 
I want to preencher os campos com email e senha 
So that eu posso acessar os serviços da plataforma 

Scenario: login bem sucedido 
Given “Gabriel” está na página de login 
When “Gabriel”preenche os campos disponíveis com seu login “gabriel_lopes123” e senha “12345678abc”
And seleciona a opção “Login”
Then “Gabriel” visualiza a página inicial da plataforma.  

Scenario: login mal sucedido devido a informações incorretas 
Given “Gabriel” está na página de login 
When “Gabriel”preenche os campos disponíveis com seu login “gabriel_lopes123” e senha “12345678abc”
And seleciona a opção “Login”
Then “Gabriel” visualiza a mensagem “e-mail ou senha incorreto”
And permanece na pagina de login 

Scenario: Esquecimento de senha
Given “Gabriel” está na página de login 
And “Gabriel” esqueceu a senha de login
When “Gabriel” seleciona a opção “esqueci minha senha”
And preenche os campos com o cpf “000000000-00” e a nova senha “abcde345”
And seleciona “redefinir senha”
Then “Gabriel” visualiza a mensagem “senha redefinida”
And retorna para a página de login 

