%
% Sistema não linear Por método de Newton
%

% resolver o sistema
x1 = [,] % colocar os valores do ponto utilizado para aproximação
[x,favl,exitflag,output] = fsolve(@nomesis,x1);

% definir um sistema 
% function [ F ] = nomesis(x)
% F(1) = ; % 1º expressão
% F(2) = ; % 2º expressão
% end