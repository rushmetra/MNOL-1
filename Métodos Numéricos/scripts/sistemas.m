% resolução de sistemas
% matriz antes do igual
matriz = [ ; ; ];

% matriz depois do igual
vetor= [ ; ;];

% solução do sistema por um método direto e estável
c = matriz\vetor;

% determinante
determinante = det(matriz);

% inversa usando EGPP
inversa = inv(matriz);

%
% Sistema não linear Por método de Newton
%

% resolver o sistema
x1 = [,] % colocar os valores do ponto utilizado para aproximação
[x,favl,exitflag,output] = fsolve(@nomesis,x1);

% definir um sistema 
function [ F ] = nomesis(x)
F(1) = ; % 1º expressão
F(2) = ; % 2º expressão
end
