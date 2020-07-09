#language:pt
Funcionalidade: Meu Perfil
    Para que eu possa manter meus dados atualizados
    Sendo um usuário
    Possa completar o meu cadastro do Perfil

    @login
    Cenário: Atualizar perfil
        Dado que acesso o meu perfil
        Quando completo o meu cadastro
        Então devo ver a mensagem de atualização cadastral:
        """
        Perfil atualizado com sucesso.
        """