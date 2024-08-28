#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP 
Quero configurar meu produto de acordo com meu tamanho e gosto 
Escolher a quantidade 
Para depois inserir no carrinho 

Contexto:
Dado que eu selecione o produto

Cenário: Selecionar produto válido
Quando eu selecionar a cor "rosa" do produto, tamanho "M" do produto e a quantidade "5" do produto
Então ao adicionar no carrinho deve exibir a mensagem "Adicionado ao carrinho!"

Cenário: Selecionar produto sem campo obrigatório
Quando não eu selecionar algum campo obrigatório
Então ao adicionar no carrinho deve exibir a mensagem "É necessário preencher todos campos obrigatórios."

Cenário: Selecionar quantidade inválida
Quando eu selecionar a cor "rosa" do produto, o tamanho "M" do produto e a quantidade "11" do produto
Então Então ao adicionar no carrinho deve exibir a mensagem "A quantidade máxima de produtos deve ser 10, não adicionado ao carrinho!"

Cenário: Limpando produtos 
Quando eu selecionar a cor "rosa" do produto, tamanho "M" do produto e a quantidade "5" do produto
Então clicar no botão "Limpar" deve apagar o tamanho e a cor e a quantidade

Cenário: Validação de produtos
Quando eu selecionar <cor>, <tamanho> e <quantidade>
Então ao adicionar no carrinho deve exibir a <mensagem>

Exemplos:
            | "Azul" | "P" | "10" | "Adicionado ao carrinho!"                                                  |
            | "Rosa" | "M" | "11" | "A quantidade máxima de produtos deve ser 10, não adicionado ao carrinho!" |
            | "    " | "P" | "10" | "É necessário preencher todos campos obrigatórios."                                |
            | "Rosa" | " " | "10" | "É necessário preencher todos campos obrigatórios."                           |
            | "Rosa" | "P" | "0"  | "É necessário preencher todos campos obrigatórios."                        |
