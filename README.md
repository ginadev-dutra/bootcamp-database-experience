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





