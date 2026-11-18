# Banco de Dados MySQL - Scripts de Estudo

Conjunto de scripts SQL desenvolvidos durante os estudos de **Banco de Dados MySQL**, cobrindo desde a criação de bancos e tabelas até consultas avançadas com relacionamentos e junções.

## Descrição

Os scripts documentam a evolução do aprendizado em SQL, partindo da criação de um banco de dados simples (`cadastro`) e evoluindo para consultas com filtros, funções de agregação, agrupamentos e relacionamento entre tabelas.

## Descrição dos Arquivos

| Arquivo | Descrição |
|---|---|
| `criacao.sql` | Criação do banco `cadastro` e de uma tabela de exemplo |
| `estrutura.sql` | Criação da tabela com chave primária e `AUTO_INCREMENT` |
| `inserido.sql` | Inserção de dados na tabela (`INSERT`) |
| `alterando.sql` | Alteração de estrutura com `ALTER TABLE` (adicionar/remover/renomear colunas) |
| `atualizacao.sql` | Atualização e exclusão de registros (`UPDATE` / `DELETE`) |
| `select.sql` | Consultas com filtros, ordenação, agregação e junções |
| `Relacionamento.sql` | Relacionamento entre tabelas com chave estrangeira e `JOIN` |
| `Banco de dados.sql` | Script consolidado com todos os comandos do estudo |

## Conceitos Abordados
- Criação de banco de dados com conjunto de caracteres (`utf8`) e collation
- Criação de tabelas com tipos de dados (`varchar`, `int`, `date`, `enum`, `decimal`, `year`)
- Chave primária (`PRIMARY KEY`) e auto incremento (`AUTO_INCREMENT`)
- Chave estrangeira (`FOREIGN KEY`) e relacionamento entre tabelas
- Inserção, atualização e exclusão de dados (`INSERT`, `UPDATE`, `DELETE`)
- Consultas com `WHERE`, `ORDER BY`, `BETWEEN`, `IN` e `LIKE`
- Agrupamento e filtragem de grupos (`GROUP BY`, `HAVING`)
- Funções de agregação (`MAX`, `MIN`, `SUM`, `AVG`, `COUNT`)
- Junção de tabelas (`JOIN ... ON`)

## Como Executar
1. Tenha o MySQL (ou MariaDB) instalado.
2. Abra o MySQL Workbench ou o terminal `mysql`.
3. Execute os scripts na ordem desejada, por exemplo:

   ```
   source criacao.sql;
   source inserido.sql;
   source select.sql;
   ```

## Tecnologias Utilizadas
- MySQL
- SQL

## Autor
Desenvolvido por **Nicholas Knopp Seferin da Silva**.
