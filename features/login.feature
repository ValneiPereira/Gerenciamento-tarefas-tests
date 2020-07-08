#language:pt

Funcionalidade: Login 
    Para que eu possa cadastrar e gerenciar minhas tarefas 
    Sendo um usuário 
    Posso acessar o sistema com meu e-mail e senha previamente cadastrados.
Contexto:Home
    Dado que eu acesso o sistema

@sprint1
Cenário: Usuário autenticado 
    Quando faço login com "eu@papito.io" e "123456" 
    Então vejo a seguinte mensagem "Olá, Fernando" 

 
@sprint1
Cenário: Senha incorreta 
    Quando faço login com "eu@papito.io" e "xpto123" 
    Então vejo a seguinte mensagem "Senha inválida." 

@sprint1
Cenário: Usuário não cadastrado 
    Quando faço login com "eu@papito404.io" e "123456" 
    Então vejo a seguinte mensagem "Usuário não cadastrado." 

@sprint2
Cenário: E-mail deve obrigatório 
    Quando faço login sem informar o e-mail  
    Então vejo a seguinte mensagem "E-mail deve ser preenchido." 

@sprint2
Cenário: Senha deve ser obrigatório 
    Quando faço login sem informar a senha 
    Então vejo a seguinte mensagem "Senha deve ser preenchida."