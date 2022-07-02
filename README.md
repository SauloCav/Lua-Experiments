# Lua Experiments

Lua é uma linguagem de programação interpretada, de script em alto nível, com tipagem dinâmica e multiparadigma, reflexiva e leve, projetada por Tecgraf da PUC-Rio em 1993 para expandir aplicações em geral, de forma extensível (que une partes de um programa feitas em mais de uma linguagem), para prototipagem e para ser embarcada em softwares complexos, como jogos. Assemelha-se com Python, Ruby e Icon, entre outras.

Lua foi criada por um time de desenvolvedores do Tecgraf da PUC-Rio, a princípio, para ser usada em um projeto da Petrobras. Devido à sua eficiência, clareza e facilidade de aprendizado, passou a ser usada em diversos ramos da programação, como no desenvolvimento de jogos (a Blizzard Entertainment, por exemplo, usou a linguagem no jogo World of Warcraft), controle de robôs, processamento de texto, etc. Também é frequentemente usada como uma linguagem de propósito geral.

Lua combina programação procedural com poderosas construções para descrição de dados, baseadas em tabelas associativas e semântica extensível. É tipada dinamicamente, interpretada a partir de bytecodes, e tem gerenciamento automático de memória com coleta de lixo. Essas características fazem de Lua uma linguagem ideal para configuração, automação (scripting) e prototipagem rápida. <br/>


## História
Lua foi criada em 1993 por Roberto Ierusalimschy, Luiz Henrique de Figueiredo e Waldemar Celes, membros do Computer Graphics Technology Group na PUC-Rio, a Pontifícia Universidade Católica do Rio de Janeiro, no Brasil. Versões de Lua antes da versão 5.0 foram liberadas sob uma licença similar à licença BSD. A partir da versão 5.0, Lua foi licenciada sob a licença MIT.

Alguns de seus parentes mais próximos são o Icon, por sua concepção, e Python, por sua facilidade de utilização por não programadores. Em um artigo publicado no Dr. Dobb's Journal, os criadores de Lua também afirmam que Lisp e Scheme foram uma grande influência na decisão de desenvolver a tabela como a principal estrutura de dados de Lua. Lua tem sido usada em várias aplicações, tanto comerciais como não comerciais.

O primeiro projeto utilizando a linguagem em jogos foi em 1997 quando a LucasArts a utilizou como linguagem de script no jogo Grim Fandango.

Em 2008 nasceu uma das engines mais famosas de Lua (Corona SDK)

Em 2009 nasceu o Love2D, uma engine para jogos 2d <br/>



## Paradigma
Lua é normalmente descrita como uma linguagem de múltiplos paradigmas, oferecendo um pequeno conjunto de características gerais que podem ser estendidas para encaixar diferentes tipos de problemas, em vez de fornecer uma especificação mais complexa e rígida para combinar com um único paradigma. Lua, por exemplo, não contém apoio explícito à herança, mas permite que ela seja executada com relativa facilidade com metatables. Do mesmo modo, Lua permite que programadores quando implementam nomes, classes, e outras funções, empreguem poderosas técnicas de programação funcional e completos escopos lexicais.


## Tipagem
Lua é uma linguagem de tipagem dinâmica. Isto significa que as variáveis não possuem tipos; somente valores possuem. Não existem definições de tipo nesta linguagem. Todos valores carregam seu próprio tipo.

Todos valores em Lua são valores de primeira classe. Isto significa que todos valores podem ser armazenados em variáveis, passadas como argumentos para outras funções e retornados como resultado.

Lua é uma linguagem dinamicamente tipada. Isto significa que variáveis não possuem tipos; somente valores possuem tipos. Não existe definição de tipos na linguagem. Todos os valores carregam o seu próprio tipo.

Todos os valores em Lua são valores de primeira classe. Isto significa que todos os valores podem ser armazenados em variáveis, passados como argumentos para outras funções e retornados como resultados.

Existem oito tipos básicos em Lua: nil, boolean, number, string, function, userdata, thread e table. Nil é o tipo do valor nil, cuja propriedade principal é ser diferente de qualquer outro valor; ele geralmente representa a ausência de um valor útil. Boolean é o tipo dos valores false e true. Tanto nil como false tornam uma condição falsa; qualquer outro valor torna a condição verdadeira. Number representa números reais (ponto flutuante de precisão dupla). (É fácil construir interpretadores Lua que usem outra representação interna para números, tais como precisão simples de ponto flutuante ou inteiros longos; veja o arquivo luaconf.h.) O tipo string representa cadeias de caracteres. Em Lua, cadeias de caracteres podem conter qualquer caractere de 8 bits, incluindo zeros ('\0') dentro dela (ver §2.1).

Lua pode chamar (e manipular) funções escritas em Lua e funções escritas em C (ver §2.5.8).

O tipo userdata permite que dados C arbitrários possam ser armazenados em variáveis Lua. Este tipo corresponde a um bloco de memória e não tem operações pré-definidas em Lua, exceto atribuição e teste de identidade. Contudo, através do uso de metatables, o programador pode definir operações para valores userdata (ver §2.8). Valores userdata não podem ser criados ou modificados em Lua, somente através da API C. Isto garante a integridade dos dados que pertencem ao programa hospedeiro.

O tipo thread representa fluxos de execução independentes e é usado para implementar co-rotinas (ver §2.11). Não confunda o tipo thread de Lua com processos leves do sistema operacional. Lua dá suporte a co-rotinas em todos os sistemas, até mesmo naqueles que não dão suporte a processos leves.

O tipo table implementa arrays associativos, isto é, arrays que podem ser indexados não apenas por números, mas por qualquer valor (exceto nil). Tabelas podem ser heterogêneas; isto é, elas podem conter valores de todos os tipos (exceto nil). Tabelas são o único mecanismo de estruturação de dados em Lua; elas podem ser usadas para representar arrays comuns, tabelas de símbolos, conjuntos, registros, grafos, árvores, etc. Para representar registros, Lua usa o nome do campo como um índice. A linguagem dá suporte a esta representação oferecendo a.name como um açúcar sintático para a["name"]. Existem várias maneiras convenientes de se criar tabelas em Lua (ver §2.5.7).

Da mesma forma que os índices, o valor de um campo da tabela pode possuir qualquer tipo (exceto nil). Em particular, dado que funções são valores de primeira classe, campos de tabela podem conter funções. Portanto, tabelas podem também possuir metódos (ver §2.5.9).

Valores do tipo table, function, thread e userdata (completo) são objetos: variáveis não contêm realmente estes valores, somente referências para eles. Atribuição, passagem de parâmetro, e retorno de funções sempre lidam com referências para tais valores; estas operações não implicam em qualquer espécie de cópia.

A função type retorna uma cadeia de caracteres descrevendo o tipo de um dado valor.


## Escopo
Lua é uma linguagem com escopo léxico. O escopo das variáveis começa no primeiro comando depois da sua declaração e vai até o fim do bloco mais interno que inclui a declaração. Considere o seguinte exemplo:

Note que, em uma declaração como local x = x, o novo x sendo declarado não está no escopo ainda e portanto o segundo x se refere a uma variável externa.

Por causa das regras de escopo léxico, variáveis locais podem ser livremente acessadas por funções definidas dentro do seu escopo. Uma variável local usada por uma função mais interna é chamada de upvalue ou variável local externa, dentro da função mais interna.

Note que cada execução de um comando local define novas variáveis locais. Considere o exemplo a seguir:

O laço cria dez fechos (isto é, dez instâncias da função anônima). Cada um destes fechos usa uma variável y diferente, enquanto todos eles compartilham a mesma variável x.


## Tratamentos Semânticos
Uma característica essencial de Lua é a semântica Extensível, e o conceito de “metatables” permite que as tabelas Lua sejam personalizadas em poderosas e exclusivas formas. O exemplo a seguir mostra uma tabela “infinita”. Para qualquer valor “n”, “fibs [n]” dará o enésimo número Fibonacci usando programação dinâmica.

Uma linguagem de computador que permite ao usuário ampliar ou modificar sua sintaxe e semântica. No sentido mais estrito, o termo diz respeito a apenas algumas das linguagens realmente utilizadas, como a Forth, que permitem ao programador modificar a própria linguagem. Ver também computer language (linguagem de computador); semantics (semântica – definição 1); syntax (sintaxe).


## Outras Características e Curiosidades



