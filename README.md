# Lua Experiments

Lua is an interpreted, high-level scripting, dynamically typed, multi-paradigm, reflexive and lightweight programming language, designed by Tecgraf from PUC-Rio in 1993 to expand applications in general, in an extensible way (which unites parts of a program made in more than one language), for prototyping and to be embedded in complex software such as games. It resembles Python, Ruby, and Icon, among others.

Lua was created by a team of Tecgraf developers from PUC-Rio, initially, to be used in a Petrobras project. Due to its efficiency, clarity and ease of learning, it began to be used in several branches of programming, such as game development (Blizzard Entertainment, for example, used the language in the game World of Warcraft), robot control, text, etc. It is also often used as a general-purpose language.

Lua combines procedural programming with powerful data description constructs based on associative tables and extensible semantics. It is dynamically typed, interpreted from bytecodes, and has automatic memory management with garbage collection. These characteristics make Lua an ideal language for configuration, automation (scripting) and rapid prototyping.


## History

Lua was created in 1993 by Roberto Ierusalimschy, Luiz Henrique de Figueiredo and Waldemar Celes, members of the Computer Graphics Technology Group at PUC-Rio, the Pontifical Catholic University of Rio de Janeiro, Brazil. Lua versions prior to version 5.0 were released under a license similar to the BSD license. As of version 5.0, Lua has been licensed under the MIT license.

Some of its closest relatives are Icon, for its design, and Python, for its ease of use by non-programmers. In an article published in Dr. Dobb's Journal, the creators of Lua also claim that Lisp and Scheme were a big influence in the decision to develop the table as Lua's main data structure. Lua has been used in many applications, both commercial and non-commercial.

The first project using the language in games was in 1997 when LucasArts used it as a scripting language in the game Grim Fandango. In 2008, one of Lua's most famous engines was born (Corona SDK). In 2009 Love2D was born, an engine for 2d games.


## Paradigm
Lua is typically described as a multi-paradigm language, offering a small set of general features that can be extended to fit different types of problems, rather than providing a more complex and rigid specification to match a single paradigm. Lua, for example, does not contain explicit inheritance support, but allows it to be performed relatively easily with metatables.

Likewise, Lua allows programmers when implementing names, classes, and other functions to employ powerful functional programming techniques and full lexical scopes.


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


## Tratamentos Semânticos
Uma característica essencial de Lua é a semântica Extensível, e o conceito de “metatables” permite que as tabelas Lua sejam personalizadas em poderosas e exclusivas formas.

Lua é ma linguagem de computador que permite ao usuário ampliar ou modificar sua sintaxe e semântica. No sentido mais estrito, o termo diz respeito a apenas algumas das linguagens realmente utilizadas, como a Forth, que permitem ao programador modificar a própria linguagem.


## Outras Características e Curiosidades

### Implementação
Os programas Lua não são interpretados diretamente do arquivo textual Lua, mas são compilados em bytecode, que é então executado na máquina virtual Lua. O processo de compilação normalmente é invisível para o usuário e é executado durante o tempo de execução, especialmente quando um compilador JIT é usado, mas pode ser feito offline para aumentar o desempenho de carregamento ou reduzir o consumo de memória do ambiente host, deixando de fora o compilador. O bytecode Lua também pode ser produzido e executado a partir de Lua, usando a função dump da biblioteca de strings e as funções load/loadstring/loadfile. Lua versão 5.3.4 é implementada em aproximadamente 24.000 linhas de código C.

Como a maioria das CPUs, e ao contrário da maioria das máquinas virtuais (que são baseadas em pilha), a Lua VM é baseada em registradores e, portanto, se assemelha mais a um projeto de hardware real. A arquitetura de registradores evita a cópia excessiva de valores e reduz o número total de instruções por função. A máquina virtual de Lua 5 é uma das primeiras VMs puras baseadas em registro a ter um amplo uso.

### Criação
Lua foi criada em 1993 por Roberto Ierusalimschy, Luiz Henrique de Figueiredo e Waldemar Celes, membros do Grupo de Tecnologia em Computação Gráfica (Tecgraf) da Pontifícia Universidade Católica do Rio de Janeiro, no Brasil.

De 1977 a 1992, o Brasil teve uma política de fortes barreiras comerciais (chamada de reserva de mercado) para hardware e software de computador. Nesse ambiente, os clientes do Tecgraf não tinham condições, nem política nem financeira, de comprar softwares customizados do exterior. Esses motivos levaram o Tecgraf a implementar do zero as ferramentas básicas necessárias.

Os predecessores de Lua foram as linguagens de descrição/configuração de dados SOL (Simple Object Language) e DEL (linguagem de entrada de dados). Eles foram desenvolvidos independentemente no Tecgraf em 1992-1993 para adicionar alguma flexibilidade em dois projetos diferentes (ambos eram programas gráficos interativos para aplicações de engenharia na empresa Petrobras). Havia falta de estruturas de controle de fluxo em SOL e DEL, e a Petrobras sentiu uma necessidade crescente de adicionar poder total de programação a elas.

Versões de Lua anteriores à versão 5.0 foram lançadas sob uma licença semelhante à licença BSD. A partir da versão 5.0, Lua foi licenciada sob a Licença MIT. Ambas são licenças de software livre permissivas e são quase idênticas.

### Aplicações
Em 2003, uma pesquisa realizada pela GameDev.net mostrou que Lua era a linguagem de script mais popular para programação de jogos. Em 12 de janeiro de 2012, Lua foi anunciada como vencedora do Front Line Award 2011 da revista Game Developer na categoria Programming Tools.

Um grande número de aplicativos que não são de jogos também usam Lua para extensibilidade, como LuaTeX, uma implementação da linguagem de configuração de tipos TeX, Redis, um banco de dados de valores-chave, Neovim, um editor de texto, Nginx, um servidor web e Wireshark , um analisador de pacotes de rede.

Através da extensão Scribunto, Lua está disponível como uma linguagem de script do lado do servidor no software MediaWiki que alimenta a Wikipedia e outros wikis. Entre seus usos estão permitir a integração de dados do Wikidata em artigos, e alimentar o sistema automatizado de taxobox.

No desenvolvimento de videogames, Lua é amplamente utilizada como linguagem de script por programadores, principalmente devido à sua facilidade percebida de embutir, execução rápida e curva de aprendizado curta. Jogos notáveis que usam Lua incluem Roblox, Garry's Mod, Payday 2, Phantasy Star Online 2, Dota 2, Angry Birds Space, Crysis, e muitos outros. Alguns jogos que não suportam nativamente programação ou scripts Lua, têm essa funcionalidade adicionada por mods, como o ComputerCraft faz para o Minecraft. Além disso, Lua também é usada em softwares que não são de videogame, como Adobe Lightroom, Moho, iClone, Aerospike e certos softwares de sistema no FreeBSD e NetBSD, e é usado como uma linguagem de script de modelo no MediaWiki usando a extensão Scribunto.
