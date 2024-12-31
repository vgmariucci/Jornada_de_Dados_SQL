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

Todas as consultas SQL usadas para criar os relatórios estão no arquivo `Relatorios_Northwind.sql`

## Como testar as consultas SQL e visualizar os relatórios usando a base de dados `Northwind`?

Para realizar as consultas SQL construídas nesse projeto, podemos seguir uma das duas opções descritas a seguir:

1. Instalação manual do servidor PostgreSQL no computador que deseja realizar as consultas e criação do schema com a base de dados Northwind. 
    - [Instalador do servidor PostgreSQL e demais ferramentas auxiliares](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads): Versão usada neste projeto --> `16.6 Windows x86-64` 
    - [Arquivo SQL para criar as tabelas da base de dados Northwind após instalação do servidor PostgreSQL](https://github.com/microsoft/sql-server-samples/blob/master/samples/databases/northwind-pubs/instnwnd.sql)

2. Usar Docker
    - Para configurar uma imagem do servidor PostgreSQL e executar um container de modo que seja possível visualizar as consultas SQL diretamente do navegador, usando o pgadmin.

    ## Passo a passo do processo usando o Docker

    1. [Baixar e Instalar o Docker](https://docs.docker.com/desktop/setup/install/windows-install/): Neste projeto foi usada a versão para Windows.

    2. Após a instalação do Docker Desktop, baixe o arquivo `docker-compose.yml` desse repositório ou o próprio repositório (com git clone) em um diretório de preferência (por exemplo, a própria pasta de downloads ou o desktop do computador).

    3. Abra o terminal ou prompt de comando e acesse o caminho do arquivo `docker-compose.yml` baixado.

    4. Execute o comando `docker-compose up`

    5. Aguarde enquanto a imagem do servidor PostgreSQL é baixada do Docker Hub.

    6. Abra o Docker Desktop e certifique-se de que os containers descritos no arquivo docker-compose.yml estão ativos. Uma alternativa rápida para verificar/listar os containers ativos é digitar no terminar o seguinte: `docker -ps`. Uma lista com os containers ativos será apresentada como mostra a imagem abaixo:

    ![docker_ps](https://github.com/vgmariucci/Jornada_de_Dados_SQL/blob/main/imagens/docker_ps.png?raw=true)

    7. No processo de criação das imagens e ativação dos containers é passada a instrução no arquivo docker-compose.yml para que seja criado o schema com a base de dados Northwind via arquivo `northwind.sql` (adicionada neste repositório por conveniência).

    8. Para verificar se o processo com Docker funcionou corretamente, podemos abrir um navegador e tentar acessar o endereço local:
    - [http://localhost:5050](http://localhost:5050). 
    - Use a senha: `admin123`. 
    
    A página que irá carregar deve ser igual ou parecida com o print abaixo:

    ![pgAdmin](https://github.com/vgmariucci/Jornada_de_Dados_SQL/blob/main/imagens/localhost_pgadmin5050.png?raw=true)

    9. Clicar em `Add New Server`:

    ![pgAdmin_Add_New_Server](https://github.com/vgmariucci/Jornada_de_Dados_SQL/blob/main/imagens/Add_New_Server_pgadmin.png?raw=true)

    10. Selecionar a aba `General` e preencher o campo `Name` com `postgres_server_db` (o mesmo nome definido no arquivo `docker-compose.yml`):

    ![pgAdmin_Register_Server_General](https://github.com/vgmariucci/Jornada_de_Dados_SQL/blob/main/imagens/register_server_general_pgadmin.png?raw=true)

    11. Selecionar a aba `Connection` e preencher os campos:
    
    - Host name/address: `postgres_server_db`
    - Username: `admin`
    - Password: `admin123`
    - Clicar em `Save`
    
    ![pgAdmin_Register_Server_Connection](https://github.com/vgmariucci/Jornada_de_Dados_SQL/blob/main/imagens/register_server_connection_pgadmin.png?raw=true)

    12. Verificar se o banco de dados `northwind` pode ser selecionado como no print abaixo:

    ![pgAdmin_Northwind_Tables_db](https://github.com/vgmariucci/Jornada_de_Dados_SQL/blob/main/imagens/northwind_schema_and_tables_pgadmin.png?raw=true)

- Nota: Caso a base de dados não esteja aparecendo, tente realizar a interrupção dos serviços em containers usando os comandos no terminal:
    - `docker-compose down`: Interrompe os containers ativos
    - `docker-compose down -v`: Remove as pastas/volumes criadas a partir do `docker-compose.yml`
    - Acesse o Docker Desktop e remova os containers e as imagens criadas.
    - Tente repetir o processo desde o `docker-compose up`

Caso tenha obtido sucesso até aqui com a visualização das tabelas da base do northwind, então basta executar as consultas SQL do arquivo `Relatorios_Northwind.sql`

- Para executar as consultas SQL no pdAdmin usando o navegador, basta clicar com o botão direito do mouse sobre alguma tabela da base northwind e escolher a opção `Query Tool`.

![query_tool_pgadmin](https://github.com/vgmariucci/Jornada_de_Dados_SQL/blob/main/imagens/query_tool_pgadmin.png?raw=true)

![query_tool_workspace_pgadmin](https://github.com/vgmariucci/Jornada_de_Dados_SQL/blob/main/imagens/query_tool_workspace_pgadmin.png?raw=true)


