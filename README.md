# Desenvolvimento do Projeto Final Referente às Aulas iniciais de SQL e PostgreSQL

## Objetivo
Aplicar os conhecimentos adquiridos durantes as aulas 1 a 4 para criar consultas em SQL usando a base de dados Northwind. As consultas irão gerar relatórios geralmente solicitados no ambiente corporativo, cujas regras de negócio se assemelham  à base de dados Northwind.

### Relatórios criados no Projeto Final da Aula 5:

- Relatório de Receita/Faturamento total
- Análise de crescimento mensal e cálculo YTD
- Segmentação de clientes:
    - Qual o valor total que cada cliente pagou até agora?
    - Separar os clientes em 5 grupos de acordo com o valor pago por cliente
    - Separar apenas os clientes que estão no grupo 3, 4 e 5 para que seja feita uma análise de Marketing especial.
- Top 10 produtos mais vendidos
- Clientes do Reino Unido que pagaram mais de U$1000.00.

## Contexto
A base de dados `Northwind` contém informações de uma empresa chamada `Northwind Traders`, a qual importa e exporta alimentos especiais de todo o mundo.

A base de dados Northwind é resultado de um sistema ERP (Enterprise Resources Planning) e reúne informações de clientes, fornecedores, compras, produtos, etc. 

A base de dados Northwind é composta por 14 tabelas, em que, os relacionamentos entre as tabelas podem ser visualizados no diagrama de relacionamento de entidades a seguir:

![northwind](https://github.com/vgmariucci/Jornada_de_Dados_SQL/blob/main/imagens/northwind-er-diagram.png?raw=true)

### Nota: 

Todas as consultas SQL usadas para criar os relatórios estão no arquivo `Aula_05_projeto_final.sql`

## Como testar as consultas SQL e visualizar os relatórios usando a base de dados `Northwind`?

Para realizar as consultas SQL construídas nesse projeto, podemos seguir uma das duas opções descritas a seguir:

- Instalação manual do servidor PostgreSQL no computador que deseja realizar as consultas e criação do schema com a base de dados Northwind. 
    - ![Instalador do servidor PostgreSQL e demais ferramentas auxiliares](https://sbp.enterprisedb.com/getfile.jsp?fileid=1259340): Versão usada neste projeto --> `16.6 Windows x86-64` 



