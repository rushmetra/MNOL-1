%
% clear apaga os valores de todas as variaveis
% clc limpa a consola
%

% colocar ; no final das operações para não aparecer os resultados na
% consola

% exp funcao exponencial
% log10 = logaritmo base 10
% log = ln


% Pode-se usar help fplot para ter a documentação do fplot (um genero de man
% do linux

%
% Para desenhar a função
%
% fplot(@(x)exerc16(x),[0,10]);
% grid;

% help fsolve
%
% Para descobrir o 0 (através do algoritmo de newton, apesar de não o ser)
%
% Mostrar o que aconteceu em todas as iterações
% op1 = optimset('Display','iter');
% [x,favl,exitflag,output] = fsolve(@exerc16, 6, op1);

%
% op2 = optimset('tolfun',1e-3)
% [x,favl,exitflag,output] = fsolve(@exerc16, 6, op2