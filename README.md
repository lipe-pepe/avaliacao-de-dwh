# Avaliação de DWH

_Integrantes:_
- Alex Teixeira, DRE: 117036607
- Felipe Augusto de Miranda Villela, DRE: 114080437
- Felipe Pêpe da Silva Oliveira, DRE: 123589472
- João Pedro Martins Filipe Figueiredo Matos Menezes Pereira, DRE: 123642929
- Karen Silva Pacheco, DRE: 123476904
- Lucas Máximo Dantas, DRE: 118045112
- Lucas Tavares, DRE: 120152739

Esse repositório contém os códigos do trabalho sobre Data Warehouses, para a disciplina EE890 - Big Data, do curso de Engenharia de Computação e Informação na Universidade Federal do Rio de Janeiro.

## Visão Geral do Projeto

Este projeto de Data Warehouse (DWH) tem como objetivo integrar dados de quatro sistemas distintos de empresas de Locação de Automóveis em um esquema dimensional estrela, facilitando análises avançadas e relatórios. O projeto envolve as seguintes etapas principais:

1. Extração dos dados dos sistemas fontes para a área de stage.
2. Transformação dos dados na área de stage para padronização e limpeza.
3. Carga dos dados transformados nas tabelas de fatos e dimensões do DWH.
4. Geração de relatórios e matrizes de percentuais de movimentação entre pátios.

## Estrutura do Repositório

### Sistemas relacionais dos grupos

Os sistemas das 4 locadoras foram criados por grupos diferentes. Cada um deles está em um diretório diferente e foi compartilhado com formas diferentes. A organização para os códigos fontes ou arquivos de documentação de cada grupo está estruturada da seguinte forma:

```markdown
/grupos
├── /grupo1
├── /grupo2
├── /grupo3
└── /grupo4
```

Cada diretório possui os arquivos referentes aos modelos das locadoras. Neles também se encontram os nomes dos respectivos integrantes dos grupos.

### ETL

Os códigos para extração, transformação e carga ETL para o esquema dimensional estrela estão organizados da seguinte maneira:

```markdown
/dwh
├── /analysis
│ ├── matrix.sql
│ └── reports.sql
├── /extraction
│ ├── /grupo1
│ │ ├── create_stage.sql
│ │ └── extract.sql
│ ├── /grupo2
│ │ ├── create_stage.sql
│ │ └── extract.sql
│ ├── /grupo3
│ │ ├── create_stage.sql
│ │ └── extract.sql
│ └── /grupo4
│ ├── create_stage.sql
│ └── extract.sql
├── /transformation
│ ├── create_dimension_tables.sql
│ ├── populate_dimension_table.sql
│ └── transformation_tables.sql
├── /loading
│ └── loading.sql
```

## Extração de Dados

A etapa de extração envolve a coleta de dados das fontes de dados originais e o armazenamento desses dados na área de stage do DWH. Isso permite que os dados sejam processados de maneira centralizada.

A área de stage é uma camada temporária onde os dados são armazenados após a extração das fontes de dados, mas antes de serem transformados e carregados no Data Warehouse final. Esta etapa intermediária permite coletar e armazenar dados de várias fontes em um local centralizado, identificar e corrigir erros ou inconsistências nos dados antes de carregá-los no DWH.

Os scripts de extração estão localizados na pasta `extraction`. Eles são responsáveis por extrair os dados das fontes e movê-los para a área de stage.

## Transformação de Dados

A etapa de transformação envolve a limpeza, normalização e integração dos dados extraídos na área de stage. Esta etapa garante que os dados estejam em um formato adequado para serem carregados no DWH.

Os scripts de transformação estão localizados na pasta transformation. Eles aplicam as transformações necessárias para padronizar e limpar os dados.

## Carga de Dados

A etapa de carga envolve a inserção dos dados transformados nas tabelas de fatos e dimensões do DWH. Isso permite que os dados estejam prontos para análise e geração de relatórios.

Os scripts de carga estão localizados na pasta loading. Eles carregam os dados transformados nas tabelas finais do DWH.

## Relatórios

A etapa de geração de relatórios envolve a criação de consultas SQL que produzem os relatórios necessários para a análise de dados, bem como a matriz de percentuais de movimentação entre pátios.

Os scripts de geração de relatórios estão localizados na pasta reports.
