%{
#include<stdio.h>
int v=0,op=0,id=0,flag=0;
%}

%%
[a-z A-Z]+[0-9 A-Z a-z]* {printf("\nIdentifier:%s",yytext); id++;}
[0-9]+ {printf("\nIdentifier:%s",yytext);id++;}
[\+\-\*/\=] {printf("\nOperator:%s",yytext);op++;}
"(" {v++;}
")" {v--;}
";" {flag=1;}
.|\n {return 0;}
%%

intmain()
{
        printf("Enter the expression:");
        yylex();
        if((op+1)==id && v==0 && flag==0)
        {
                printf("\n\n Expression is Valid\n")
                printf("No of identifier = %d \n No of Operators = %d \n",id,op);
        }
        else
                printf("\n Expression is Invalid\n")
return 0;
}
int yywrap(){
return 0;
}
