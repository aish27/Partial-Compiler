%{
#include <stdio.h>
#include <stdlib.h>
%}
%%
[\r]+ ;
[ \t\n]+ ;
:= { return 403; } 
\+ { return 301;} 
- { return 302;}  
\< {return 303;} 
> {return 304;} 
= {return 305;} 
\!= {return 306;} 
\<= {return 307;} 
\>= {return 308;} 
&& {return 309;} 
\|\| {return 310;} 
; {return 401;} 
, {return 402;} 
: {return 404;} 
\? {return 405;} 
\^ {return 406;} 
PROGRAM {return 501;}
BEGIN {return 502;}
END {return 503;}
IF {return 504;}
THEN {return 505;} 
ELSE {return 506;}
WHILE {return 507;}
INTEGER {return 508;} 
REAL {return 509;}
FOR {return 510;}
[0-9]+ {return 200;}
[0-9]+\.[0-9]+ {return 200;}
[a-zA-Z][a-zA-Z0-9_&%]* {return 100;}
. {return 600;} 
%%

//Author:Aishwarya Venketeswaran
// This was required to run in my computer
//Uncomment if not required in your computer
yywrap()
{
}


void main()
{
int tokentype = 0;
	while (tokentype = yylex())
	{
		printf("%d\n", tokentype);
	}
}