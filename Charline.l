
letter[a-zA-Z]
%{
int char1=0,word=0,line=0,white_space=0;
%}

%%
\n {line++;}
[" "] {white_space++;}
[^ \t\n]+ {word++;char1+=yyleng;}
%%

int main(int argc,char**argv)
{
FILE *fp;
fp=fopen("abc.txt","r");
yyin=fp;
yylex();
printf("\nFile Contents are as follows:");
printf("\nTotal no. of  characters are =%d",char1);
printf("\nTotal no. of  words are =%d",word);
printf("\nTotal no. of  lines are =%d",line);
printf("\nTotal no. of white spaces are =%d",white_space);
printf("\n");
}
int yywrap()
{
return 1;
}



