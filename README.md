# Lua Experiments

Lua é uma linguagem de programação interpretada, de script em alto nível, com tipagem dinâmica e multiparadigma, reflexiva e leve, projetada por Tecgraf da PUC-Rio em 1993 para expandir aplicações em geral, de forma extensível (que une partes de um programa feitas em mais de uma linguagem), para prototipagem e para ser embarcada em softwares complexos, como jogos. Assemelha-se com Python, Ruby e Icon, entre outras.

Lua foi criada por um time de desenvolvedores do Tecgraf da PUC-Rio, a princípio, para ser usada em um projeto da Petrobras. Devido à sua eficiência, clareza e facilidade de aprendizado, passou a ser usada em diversos ramos da programação, como no desenvolvimento de jogos (a Blizzard Entertainment, por exemplo, usou a linguagem no jogo World of Warcraft), controle de robôs, processamento de texto, etc. Também é frequentemente usada como uma linguagem de propósito geral.

Lua combina programação procedural com poderosas construções para descrição de dados, baseadas em tabelas associativas e semântica extensível. É tipada dinamicamente, interpretada a partir de bytecodes, e tem gerenciamento automático de memória com coleta de lixo. Essas características fazem de Lua uma linguagem ideal para configuração, automação (scripting) e prototipagem rápida.


## História
Lua foi criada em 1993 por Roberto Ierusalimschy, Luiz Henrique de Figueiredo e Waldemar Celes, membros do Computer Graphics Technology Group na PUC-Rio, a Pontifícia Universidade Católica do Rio de Janeiro, no Brasil. Versões de Lua antes da versão 5.0 foram liberadas sob uma licença similar à licença BSD. A partir da versão 5.0, Lua foi licenciada sob a licença MIT.

Alguns de seus parentes mais próximos são o Icon, por sua concepção, e Python, por sua facilidade de utilização por não programadores. Em um artigo publicado no Dr. Dobb's Journal, os criadores de Lua também afirmam que Lisp e Scheme foram uma grande influência na decisão de desenvolver a tabela como a principal estrutura de dados de Lua. Lua tem sido usada em várias aplicações, tanto comerciais como não comerciais.

O primeiro projeto utilizando a linguagem em jogos foi em 1997 quando a LucasArts a utilizou como linguagem de script no jogo Grim Fandango. Em 2008 nasceu uma das engines mais famosas de Lua (Corona SDK). Em 2009 nasceu o Love2D, uma engine para jogos 2d


## Paradigma
Lua é normalmente descrita como uma linguagem de múltiplos paradigmas, oferecendo um pequeno conjunto de características gerais que podem ser estendidas para encaixar diferentes tipos de problemas, em vez de fornecer uma especificação mais complexa e rígida para combinar com um único paradigma. Lua, por exemplo, não contém apoio explícito à herança, mas permite que ela seja executada com relativa facilidade com metatables.

Do mesmo modo, Lua permite que programadores quando implementam nomes, classes, e outras funções, empreguem poderosas técnicas de programação funcional e completos escopos lexicais. <br/>


## Tipagem
Lua é uma linguagem de tipagem dinâmica. Isto significa que as variáveis não possuem tipos; somente valores possuem. Não existem definições de tipo nesta linguagem. Todos valores carregam seu próprio tipo. Todos valores em Lua são valores de primeira classe. Isto significa que todos valores podem ser armazenados em variáveis, passadas como argumentos para outras funções e retornados como resultado.

Existem oito tipos básicos em Lua: nil, boolean, number, string, function, userdata, thread e table. Nil é o tipo do valor nil, cuja propriedade principal é ser diferente de qualquer outro valor; ele geralmente representa a ausência de um valor útil. Boolean é o tipo dos valores false e true. Tanto nil como false tornam uma condição falsa; qualquer outro valor torna a condição verdadeira. Number representa números reais (ponto flutuante de precisão dupla). Lua pode chamar (e manipular) funções escritas em Lua e funções escritas em C.

O tipo userdata permite que dados C arbitrários possam ser armazenados em variáveis Lua. Este tipo corresponde a um bloco de memória e não tem operações pré-definidas em Lua, exceto atribuição e teste de identidade. Contudo, através do uso de metatables, o programador pode definir operações para valores userdata. Valores userdata não podem ser criados ou modificados em Lua, somente através da API C. Isto garante a integridade dos dados que pertencem ao programa hospedeiro. O tipo thread representa fluxos de execução independentes e é usado para implementar co-rotinas. Não confunda o tipo thread de Lua com processos leves do sistema operacional. Lua dá suporte a co-rotinas em todos os sistemas, até mesmo naqueles que não dão suporte a processos leves.

O tipo table implementa arrays associativos, isto é, arrays que podem ser indexados não apenas por números, mas por qualquer valor (exceto nil). Tabelas podem ser heterogêneas; isto é, elas podem conter valores de todos os tipos (exceto nil). Tabelas são o único mecanismo de estruturação de dados em Lua; elas podem ser usadas para representar arrays comuns, tabelas de símbolos, conjuntos, registros, grafos, árvores, etc. Para representar registros, Lua usa o nome do campo como um índice.
Valores do tipo table, function, thread e userdata (completo) são objetos: variáveis não contêm realmente estes valores, somente referências para eles. Atribuição, passagem de parâmetro, e retorno de funções sempre lidam com referências para tais valores; estas operações não implicam em qualquer espécie de cópia. A função type retorna uma cadeia de caracteres descrevendo o tipo de um dado valor.


## Escopo
Lua é uma linguagem com escopo léxico. O escopo das variáveis começa no primeiro comando depois da sua declaração e vai até o fim do bloco mais interno que inclui a declaração.

Note que, em uma declaração como local x = x, o novo x sendo declarado não está no escopo ainda e portanto o segundo x se refere a uma variável externa.
Por causa das regras de escopo léxico, variáveis locais podem ser livremente acessadas por funções definidas dentro do seu escopo. Uma variável local usada por uma função mais interna é chamada de upvalue ou variável local externa, dentro da função mais interna. Note que cada execução de um comando local define novas variáveis locais.

Laços criam dez fechos (isto é, dez instâncias da função anônima). Cada um destes fechos usa uma variável y diferente, enquanto todos eles compartilham a mesma variável x.


## Tratamentos Semânticos
Uma característica essencial de Lua é a semântica Extensível, e o conceito de “metatables” permite que as tabelas Lua sejam personalizadas em poderosas e exclusivas formas. O exemplo a seguir mostra uma tabela “infinita”. Para qualquer valor “n”, “fibs [n]” dará o enésimo número Fibonacci usando programação dinâmica.

Lua é ma linguagem de computador que permite ao usuário ampliar ou modificar sua sintaxe e semântica. No sentido mais estrito, o termo diz respeito a apenas algumas das linguagens realmente utilizadas, como a Forth, que permitem ao programador modificar a própria linguagem.


## Outras Características e Curiosidades

### Implementação
Os programas Lua não são interpretados diretamente do arquivo textual Lua, mas são compilados em bytecode, que é então executado na máquina virtual Lua. O processo de compilação normalmente é invisível para o usuário e é executado durante o tempo de execução, especialmente quando um compilador JIT é usado, mas pode ser feito offline para aumentar o desempenho de carregamento ou reduzir o consumo de memória do ambiente host, deixando de fora o compilador. O bytecode Lua também pode ser produzido e executado a partir de Lua, usando a função dump da biblioteca de strings e as funções load/loadstring/loadfile. Lua versão 5.3.4 é implementada em aproximadamente 24.000 linhas de código C.

Como a maioria das CPUs, e ao contrário da maioria das máquinas virtuais (que são baseadas em pilha), a Lua VM é baseada em registradores e, portanto, se assemelha mais a um projeto de hardware real. A arquitetura de registradores evita a cópia excessiva de valores e reduz o número total de instruções por função. A máquina virtual de Lua 5 é uma das primeiras VMs puras baseadas em registro a ter um amplo uso.

### C API
Lua destina-se a ser incorporada em outros aplicativos e fornece uma API C para essa finalidade. A API é dividida em duas partes: o núcleo Lua e a biblioteca auxiliar Lua. O design da API Lua elimina a necessidade de gerenciamento manual de referências em código C, diferentemente da API do Python. A API, como a linguagem, é minimalista. A funcionalidade avançada é fornecida pela biblioteca auxiliar, que consiste principalmente em macros de pré-processador que auxiliam em operações de tabelas complexas.

A API Lua C é baseada em pilha. Lua fornece funções para fazer push e pop da maioria dos tipos de dados C simples (inteiros, floats, etc.) de e para a pilha, bem como funções para manipular tabelas através da pilha. O agrupamento de dados entre funções C e Lua também é feito usando a pilha. Para chamar uma função Lua, argumentos são colocados na pilha e, em seguida, lua_call é usado para chamar a função real. Ao escrever uma função C para ser chamada diretamente de Lua, os argumentos são lidos da pilha.

### Criação
Lua foi criada em 1993 por Roberto Ierusalimschy, Luiz Henrique de Figueiredo e Waldemar Celes, membros do Grupo de Tecnologia em Computação Gráfica (Tecgraf) da Pontifícia Universidade Católica do Rio de Janeiro, no Brasil.

De 1977 a 1992, o Brasil teve uma política de fortes barreiras comerciais (chamada de reserva de mercado) para hardware e software de computador. Nesse ambiente, os clientes do Tecgraf não tinham condições, nem política nem financeira, de comprar softwares customizados do exterior. Esses motivos levaram o Tecgraf a implementar do zero as ferramentas básicas necessárias.

Os predecessores de Lua foram as linguagens de descrição/configuração de dados SOL (Simple Object Language) e DEL (linguagem de entrada de dados). Eles foram desenvolvidos independentemente no Tecgraf em 1992-1993 para adicionar alguma flexibilidade em dois projetos diferentes (ambos eram programas gráficos interativos para aplicações de engenharia na empresa Petrobras). Havia falta de estruturas de controle de fluxo em SOL e DEL, e a Petrobras sentiu uma necessidade crescente de adicionar poder total de programação a elas.

Lua 1.0 foi projetada de tal forma que seus construtores de objetos, sendo então um pouco diferentes do estilo leve e flexível atual, incorporaram a sintaxe de descrição de dados do SOL (daí o nome Lua: Sol significa "Sol" em português, e Lua significa "Lua"). A sintaxe Lua para estruturas de controle foi emprestada principalmente de Modula (if, while, repeat/until), mas também teve influência de CLU (múltiplas atribuições e múltiplos retornos de chamadas de função, como uma alternativa mais simples para parâmetros de referência ou ponteiros explícitos), C++ ("ideia legal de permitir que uma variável local seja declarada apenas onde precisamos"), SNOBOL e AWK (matrizes associativas). Em um artigo publicado no Dr. Dobb's Journal, os criadores de Lua também afirmam que LISP e Scheme com seu mecanismo de estrutura de dados único e onipresente (a lista) foram uma grande influência em sua decisão de desenvolver a tabela como a estrutura de dados primária de Lua.

Versões de Lua anteriores à versão 5.0 foram lançadas sob uma licença semelhante à licença BSD. A partir da versão 5.0, Lua foi licenciada sob a Licença MIT. Ambas são licenças de software livre permissivas e são quase idênticas.

### Aplicações
Em 2003, uma pesquisa realizada pela GameDev.net mostrou que Lua era a linguagem de script mais popular para programação de jogos. Em 12 de janeiro de 2012, Lua foi anunciada como vencedora do Front Line Award 2011 da revista Game Developer na categoria Programming Tools.

Um grande número de aplicativos que não são de jogos também usam Lua para extensibilidade, como LuaTeX, uma implementação da linguagem de configuração de tipos TeX, Redis, um banco de dados de valores-chave, Neovim, um editor de texto, Nginx, um servidor web e Wireshark , um analisador de pacotes de rede.

Através da extensão Scribunto, Lua está disponível como uma linguagem de script do lado do servidor no software MediaWiki que alimenta a Wikipedia e outros wikis. Entre seus usos estão permitir a integração de dados do Wikidata em artigos, e alimentar o sistema automatizado de taxobox.

No desenvolvimento de videogames, Lua é amplamente utilizada como linguagem de script por programadores, principalmente devido à sua facilidade percebida de embutir, execução rápida e curva de aprendizado curta. Jogos notáveis que usam Lua incluem Roblox, Garry's Mod, Payday 2, Phantasy Star Online 2, Dota 2, Angry Birds Space, Crysis, e muitos outros. Alguns jogos que não suportam nativamente programação ou scripts Lua, têm essa funcionalidade adicionada por mods, como o ComputerCraft faz para o Minecraft. Além disso, Lua também é usada em softwares que não são de videogame, como Adobe Lightroom, Moho, iClone, Aerospike e certos softwares de sistema no FreeBSD e NetBSD, e é usado como uma linguagem de script de modelo no MediaWiki usando a extensão Scribunto.
