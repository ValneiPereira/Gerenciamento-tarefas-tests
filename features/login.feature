#language:pt

Funcionalidade: Login 
    Para que eu possa cadastrar e gerenciar minhas tarefas 
    Sendo um usuário 
    Posso acessar o sistema com meu e-mail e senha previamente cadastrados.
Contexto:Home
    Dado que eu acesso o sistema

@sprint1 @logout
Cenário: Usuário autenticado 
    Quando faço login com "eu@papito.io" e "123456" 
    Então vejo a mensagem de boas vindas "Olá, papito" 
 
@sprint1
Cenário: Senha incorreta 
    Quando faço login com "eu@papito.io" e "xpto123" 
    Então vejo a mensagem de alerta "Senha inválida." 

@sprint1
Cenário: Usuário não cadastrado 
    Quando faço login com "eu@papito404.io" e "123456" 
    Então vejo a mensagem de alerta "Usuário não cadastrado." 

@sprint2
Cenário: E-mail deve obrigatório 
    Quando faço login com "" e "123456" 
    Então vejo a mensagem de alerta "Email incorreto ou ausente." 

@sprint2
Cenário: Senha deve ser obrigatório 
    Quando faço login com "eu@papito404.io" e "" 
    Então vejo a mensagem de alerta "Senha ausente."