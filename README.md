# Lua Experiments

Lua is an interpreted, high-level scripting, dynamically typed, multi-paradigm, reflexive and lightweight programming language, designed by Tecgraf from PUC-Rio in 1993 to expand applications in general, in an extensible way (which unites parts of a program made in more than one language), for prototyping and to be embedded in complex software such as games. It resembles Python, Ruby, and Icon, among others.

Lua combines procedural programming with powerful data description constructs based on associative tables and extensible semantics. It is dynamically typed, interpreted from bytecodes, and has automatic memory management with garbage collection. These characteristics make Lua an ideal language for configuration, automation (scripting) and rapid prototyping.


## History

Lua was created in 1993 by Roberto Ierusalimschy, Luiz Henrique de Figueiredo and Waldemar Celes, members of the Computer Graphics Technology Group at PUC-Rio, the Pontifical Catholic University of Rio de Janeiro, Brazil. Lua versions prior to version 5.0 were released under a license similar to the BSD license. As of version 5.0, Lua has been licensed under the MIT license.

Some of its closest relatives are Icon, for its design, and Python, for its ease of use by non-programmers. In an article published in Dr. Dobb's Journal, the creators of Lua also claim that Lisp and Scheme were a big influence in the decision to develop the table as Lua's main data structure. Lua has been used in many applications, both commercial and non-commercial.

The first project using the language in games was in 1997 when LucasArts used it as a scripting language in the game Grim Fandango. In 2008, one of Lua's most famous engines was born (Corona SDK). In 2009 Love2D was born, an engine for 2d games.


## Paradigm

Lua is typically described as a multi-paradigm language, offering a small set of general features that can be extended to fit different types of problems, rather than providing a more complex and rigid specification to match a single paradigm. Lua, for example, does not contain explicit inheritance support, but allows it to be performed relatively easily with metatables.

Likewise, Lua allows programmers when implementing names, classes, and other functions to employ powerful functional programming techniques and full lexical scopes.


## Types

Lua is a dynamically typed language. This means that variables do not have types; only values have. There are no type definitions in this language. All values carry their own type. All values in Lua are first class values. This means that all values can be stored in variables, passed as arguments to other functions and returned as a result.

There are eight basic types in Lua: nil, boolean, number, string, function, userdata, thread, and table. Nil is the type of the nil value, whose main property is to be different from any other value; it usually represents the absence of a useful value. Boolean is the type of the values false and true. Both nil and false make a condition false; any other value makes the condition true. Number represents real numbers (double-precision floating point). Lua can call (and manipulate) functions written in Lua and functions written in C.

The userdata type allows arbitrary C data to be stored in Lua variables. This type corresponds to a block of memory and has no predefined operations in Lua, except assignment and identity testing. However, through the use of metatables, the programmer can define operations for userdata values. Userdata values cannot be created or modified in Lua, only through the C API. This guarantees the integrity of data belonging to the host program. The thread type represents independent streams of execution and is used to implement coroutines. Don't confuse Lua's thread type with lightweight operating system processes. Lua supports coroutines on all systems, even those that don't support lightweight processes.

The table type implements associative arrays, that is, arrays that can be indexed not just by numbers, but by any value (except nil). Tables can be heterogeneous; that is, they can contain values of all types (except nil). Tables are the only data structuring mechanism in Lua; they can be used to represent common arrays, symbol tables, sets, records, graphs, trees, etc. To represent records, Lua uses the field name as an index.
Values of type table, function, thread and userdata (complete) are objects: variables do not actually contain these values, only references to them. Assignment, parameter passing, and function return always deal with references to such values; these operations do not imply any kind of copying. The type function returns a string describing the type of a given value.


## Scope

Lua is a lexically scoped language. The scope of variables starts at the first statement after their declaration and goes to the end of the innermost block that includes the declaration.

Note that in a declaration like local x = x, the new x being declared is not in scope yet, so the second x refers to an external variable.
Because of lexical scoping rules, local variables can be freely accessed by functions defined within their scope. A local variable used by an innermost function is called an upvalue or outer local variable within the innermost function. Note that each execution of a local command sets new local variables.


## Semantic Treatments

An essential feature of Lua is Extensible semantics, and the concept of “metatables” allows Lua tables to be customized in powerful and unique ways.

Lua is a computer language that allows the user to extend or modify its syntax and semantics. In the strictest sense, the term refers to only some of the languages actually used, such as Forth, that allow the programmer to modify the language itself.


### Implementation

Lua programs are not interpreted directly from the Lua textual file, but are compiled into bytecode, which is then executed in the Lua virtual machine. The compilation process is normally invisible to the user and runs during runtime, especially when a JIT compiler is used, but it can be done offline to increase load performance or reduce the memory consumption of the host environment. out the compiler. Lua bytecode can also be produced and executed from Lua, using the string library's dump function and the load/loadstring/loadfile functions. Lua version 5.3.4 is implemented in approximately 24,000 lines of C code.

Like most CPUs, and unlike most virtual machines (which are stack-based), Lua VM is register-based and therefore more closely resembles a real hardware design. The register architecture avoids excessive copying of values ​​and reduces the total number of instructions per function. The Lua 5 virtual machine is one of the first pure registry-based VMs to see widespread use.


### Creation

Lua was created in 1993 by Roberto Ierusalimschy, Luiz Henrique de Figueiredo and Waldemar Celes, members of the Computer Graphics Technology Group (Tecgraf) at the Pontifical Catholic University of Rio de Janeiro, Brazil.

From 1977 to 1992, Brazil had a policy of strong trade barriers (called market reserve) for computer hardware and software. In this environment, Tecgraf's customers were not in a position, either politically or financially, to buy customized software from abroad. These reasons led Tecgraf to implement the necessary basic tools from scratch.

Lua's predecessors were the SOL (Simple Object Language) and DEL (Data Entry Language) data description/configuration languages. They were independently developed at Tecgraf in 1992-1993 to add some flexibility in two different projects (both were interactive graphics programs for engineering applications at Petrobras). There was a lack of flow control structures in SOL and DEL, and Petrobras felt a growing need to add full programming power to them.


### Applications

In 2003, a survey conducted by GameDev.net showed that Lua was the most popular scripting language for game programming. On January 12, 2012, Lua was announced as the winner of Game Developer Magazine's 2011 Front Line Award in the Programming Tools category.

A large number of non-gaming applications also use Lua for extensibility, such as LuaTeX, an implementation of the TeX type configuration language, Redis, a key-value database, Neovim, a text editor, Nginx, a web server and Wireshark, a network packet analyzer.

Through the Scribunto extension, Lua is available as a server-side scripting language in the MediaWiki software that powers Wikipedia and other wikis. Among its uses are enabling the integration of Wikidata data into articles, and powering the automated taxobox system.

In video game development, Lua is widely used as a scripting language by programmers, mainly due to its perceived ease of embedding, fast execution, and short learning curve. Notable games that use Lua include Roblox, Garry's Mod, Payday 2, Phantasy Star Online 2, Dota 2, Angry Birds Space, Crysis, and many others. Some games that don't natively support Lua programming or scripts, have this functionality added by mods, like ComputerCraft does for Minecraft. In addition, Lua is also used in non-video game software such as Adobe Lightroom, Moho, iClone, Aerospike, and certain system software on FreeBSD and NetBSD, and is used as a template scripting language in MediaWiki using the Scribunto extension. .
