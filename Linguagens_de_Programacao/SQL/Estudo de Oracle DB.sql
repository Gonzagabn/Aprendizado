--Aula de SQL para Oracle db
/*

OLTP é um banco de dados para Insert, Delete e UPDATE (Gravação)
OLAP é um banco de dados para Select (Leitura/Consulta)

Datablocks menores (2KB e 4KB) são melhores, ou mais velozes, para gravação
Datablocks maiores (16KB e 32KB) são melhores ou mais velozes, para leitura

Datablocks de 8KB é híbrido e não tem como alterar o padrão do banco de dados todo,
mas é possível alterar o tamanho dos blocos por objeto.

Vários Datablocks formam um Extent (Exemplo: 4KB + 4KB + 4KB = 12KB de Extent)

Tablespace contém tudo 
Datablock - Blocos no disco de armazenamento 
Segmentos - Objetos do banco de dados (Tabela, Views, Procedures...)
Extents - Tamanho ocupado pelos segmentos

Para criar uma tabela no Oracle devemos indicar uma TableSpace (TS) elas contém 
arquivos do tipo .dbf (data base file)
*/
Drop Table NOME_DA_TABELA;

/* Normalmento no Oracle, criamos um Objeto apontado para uma estrutura Lógica e essa para uma 
estrutura Física - OLF

Existem Tablespaces permanentes e temporárias

Multiplexação - Controlfile - fornece informações para Start UP e Shut Down
os processos executados fazem Check Points nos Controlfiles e também guardam informações 
sobre qual tablespace aponta para um arquivo tipo 01.dbf e 02.dbf

Redo Log Files - armazenam os commits
CTL diz o que já ta em memoria e o que está em banco
esses Redos são informações sobre se o arquivo .dbf já processou a alteração, ou se está na 
memória isso para que se caso o BD caia, seja possível recuperar as informações

Existe um modo chamado Archive que contém vários Redo Log Files para ir atualizando 
conforme a demanda



