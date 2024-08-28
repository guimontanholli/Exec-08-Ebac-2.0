            #language: pt

            Funcionalidade: Tela de cadastro
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de Checkout

            Cenário: Cadastro válido
            Quando eu preencher todos os campos com marcados com asteriscos
            Então ao finalizar compra apresentar mensagem "Cadastro ok!"

            Cenário: email inválido
            Quando eu preencher o campo e-mail "123@.com"
            Então ao finalizar compra apresentar mensagem "E-mail inválido!"

            Cenário: Cadastro sem dados
            Quando eu não preencher algum dos campos com asteriscos
            Então ao finalizar compra apresentar mensagem "Cadastro incompleto!"

            Cenário: Cadastro multiplos
            Quando eu preencher os campos com asteriscos
            Então ao finalizar compra apresentar <mensagem>

            Exemplos:
            | "João" | "Silva" | "Brasil" | "Rua 1" | "Osasco" | "00000-123" | "11 91234-0000" | "joao.silva@teste.com" | "Cadastro ok!"         |
            | "João" | "Silva" | "Brasil" | "Rua 1" | "Osasco" | "00000-123" | "11 91234-0000" | "joao.silva.com"       | "E-mail inválido!"     |
            | "João" | "Silva" | "Brasil" | " "     | "Osasco" | "00000-123" | " "             | "joao.silva@teste.com" | "Cadastro incompleto!" |



