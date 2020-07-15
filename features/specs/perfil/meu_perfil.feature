#language:pt
Funcionalidade: Meu Perfil
    Para que eu possa manter meus dados atualizados
    Sendo um usuário
    Possa completar o meu cadastro do Perfil

    @logout @meuperfil
    Esquema do Cenário: Atualizar perfil

        Dado que estou autenticando com "<email>" e "<senha>"
        E acesso o meu perfil
        Quando completo o meu cadastro "<empresa>" e "<cargo>"
        Então devo ver a mensagem de atualização cadastral:
        """
        Perfil atualizado com sucesso.
        """
        Exemplos:
        | email            | senha  | empresa   | cargo      |
        | gugu@papito.io   | 123456 | Yahoo     | Developer  |
        | valnei@papito.io | 123456 | Google    | QA         |
        | eu@papito.io     | 123456 | Microsoft | CEO        |
        | elisa@papito.io  | 123456 | Linkedin  | CTO        |
        | mark@papito.io   | 123456 | Facebook  | Estagiario |
