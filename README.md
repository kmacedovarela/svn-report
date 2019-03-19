Gerador de relatórios a partir do log do SVN

O script é  responsável por gerar um relatório HTML a partir do log do SVN, baseado em um conjunto de usuários, uma origem (branch ou trunk) e um período de tempo.

O arquivo style.xls é o layout utilizado pela biblioteca Saxon para gerar o html. 

O arquivo svn_config.sh possui todas as variaveis customizaveis do script;

O título do relatório está definido dentro do script na variável "Título", para que o título possa ser gerado dinâmicamente

Para utilizar um repositorio externo, basta setar a url na variavel "svn_path" 
Para utilizar um repositorio ja existente na maquina local, basta setar um filesystem dir na variavel "svn_path"

