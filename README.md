# Bootcamp da Dio - Database Experience
Repositório criado para as anotações de estudos e também desenvolvimento dos desafios do projeto.
## O papel dos Bancos de Dados Relacionais (SQL) e Não Relacionais (NoSQL)
### Bancos de Dados Relacionais (SQL)
- Os bancos de dados relacionais se caracterizam por armazenar dados que tenham um relacionamento entre si;
- Normalização das informações sem duplicidade e com consistência;
- Schema de dados rígido, com modelagem pré-definida e por isso, utiliza a linguagem SQL;
- Fornece mais integridade, tem maior consistência e organiza melhor os dados;
- As consultas são mais complexas;
- Escalam de forma vertical, com upgrade de hardware do recurso para que ele seja capaz de suportar e armazenar as informações;
- Existe também a escalabilidade horizontal no relacional, mas é pouco utilizada e geralmente é somente para leitura de dados;
- Depende do subsistema de disco para uma melhor performance;
- Em transações, implementam as propriedades ACID.

### Banco de Dados Não Relacionais (NoSQL)
- É uma alternativa ao banco de dados relacional e possuem capacidades adicionais;
- Possui uma estrutura de dados flexível, escalável e de alta performance;
- É capaz de armazenar vídeos, imagens, fotos etc.;
- Criado para resolver problemas com alto volume de transações que precisam, ser escaladas horizontalmente;
- As consultas aos dados são feitas de forma mais fácil;
- Realizam particionamento de dados usando “sharing” entre os nós;
- Permite maior desempenho nas aplicações, tem escalabilidade infinita dependendo do ambiente, principalmente em nuvem;
- Excelente para aplicações que possuem picos de alto consumo, como por exemplo um aplicativo de venda de refeições, onde determinados dias e horários da semana tem seu número de transações elevado e com isso, conseguem ser flexíveis ao ponto de aumentar e reduzir sua capacidade de armazenamento;
- Não garantem plena consistência dos dados;
- Ausência das linguagens de consulta. Como não possuem uma pré-modelagem e definição, é difícil existir apenas uma linguagem que faça as consultas dos dados;
- Dependem do cluster e latência da rede para uma melhor performance;
- Ausência de conceito de transações, salvo o MongoDB, possui esta característica;
- Implementam as características BASE;
- Abrem mão da ACID em prol da alta disponibilidade e desempenho;

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

## Links Úteis
[Sintaxe Básica Markdown](https://www.markdownguide.org/)

[Download Git](https://git-scm.com/downloads)

[Página login GitHub](https://github.com/)


