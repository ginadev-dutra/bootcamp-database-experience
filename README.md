# Bootcamp da Dio - Database Experience
Repositório criado para as anotações de estudos e também desenvolvimento dos desafios do projeto.

## Links Úteis
[Sintaxe Básica Markdown](https://www.markdownguide.org/)

[Download Git](https://git-scm.com/downloads)

[Página login GitHub](https://github.com/)

## Desafio 1
### Projeto E-Commerce
Trata-se de modelagem de um e-commerce realizada na plataforma do Workbench utilizando o modelo Entidade Relacionamento. 

### Narrativa produto
* Os produtos são vendidos por uma única plataforma online. Contudo, estes podem ter vendedores distintos (terceiros)
* Cada produto possui um fornecedor
* Um ou mais produtos podem compor um pedido

### Narrativa cliente
* O cliente pode se cadastrar no site com seu CPF ou CNPJ
* O endereço do cliente irá determinar o valor do frete
* Um cliente pode comprar mais de um pedido. Este tem um período de carência para devolução do produto

### Narrativa pedido
* Os pedidos são criados por clientes e possuem informações de compra, endereço e status da entrega
* Um produto ou mais compõem o pedido
* O pedido pode ser cancelado

### Refinando o projeto
* Cliente PF ou PJ - uma conta pode ser PJ ou PF, mas não pode ter as duas informações
* Pagamento - pode ter sido cadastrado mais de uma forma de pagamento
* Entrega - possui status e código de rastreio

## Desafio 2
### Projeto Ordem de Serviço em Oficina Mecânica
Trata-se de modelagem de um Sistema de Controle e Gerenciamento de execução de ordens de serviço em uma oficina mecânica. Realizada na plataforma do Workbench utilizando o modelo Entidade Relacionamento. 

### Narrativa oficina
* Clientes levam veículos à oficina mecânica para serem consertados ou para passarem por revisões periódicas
* Cada veículo é designado a uma equipe de mecânicos que identifica os serviços a serem executados e preenche uma OS com data de entrega
* A partir da OS, calcula-se o valor de cada serviço, consultando uma tabela de referência de mão-de-obra
* O valor de cada peça também irá compor a OS
* O cliente autoriza a execução dos serviços
* A mesma equipe avalia e executa os serviços
* Os mecânicos possuem código, nome, endereço e especialidade
* Cada OS possui nº, data de emissão, um valor, status e uma data para conclusão dos trabalhos
* Uma OS pode ser composta por vários serviços e um mesmo serviço pode estar contido em mais de uma OS
* Uma OS pode ter vários tipos de peça e uma peça pode estar presente em mais de uma OS




