# CompilerDesignProject
## steps to run
lex project.lex
yacc -d project.y
cc y.tab.c lex.yy.c -o TempConverter >TempConverter.exe

## Output
1> Enter sentence: 40 celsius atle ketla kelvin ?
Digit		: 40
Temp Unit	: celsius 
Keyword		:atle 
Que Word	:ketla 
Temp Unit	: kelvin 
Que mark	: ?

This sentence is valid.

2> Enter sentence: 123 celsius atle ketla rankine thay ?
Digit		: 123
Temp Unit	: celsius 
Keyword		:atle 
Que Word	:ketla 
Temp Unit	: rankine 
Keyword		:thay 
Que mark	: ?

This sentence is valid.

3>Enter sentence: rankine 26 che to kelvin ketla ?
Temp Unit	: rankine 
Digit		: 26
Keyword		:che to 
Temp Unit	: kelvin 
Que Word	:ketla 
Que mark	: ?

This sentence is valid.
