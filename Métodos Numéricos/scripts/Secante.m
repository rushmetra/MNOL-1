% ============================================
% Método da Secante (iterativo, sem derivadas)
% ============================================
%
% Exercício 12: Volume de um líquido num tanque
% f = ( π x² (3 - h) ) / 3
% E1 = E2 = 0.001

format long;

% ===========
% 1ª iteracao
% ===========
x1 = 0.25;
x2 = 0.5;
fx1 = exerc12(x1);
fx2 = exerc12(x2);

x3 = x2 - ((x2 -x1)*(fx2))./(fx2 - fx1);
fx3 = exerc12(x3);
% CP: abs(fx3) <= 0.001 ? Falso 


% ===========
% 2ª iteracao
% ===========

x4 = x3 - ((x3-x2)* fx3)./(fx3-fx2);
fx4 = exerc12(x4);

% CP: abs(fx4) <= 0.001 ? Falso

% ===========
% 3ª iteracao
% ===========

x5 = x4 - ((x4-x3) * fx4)./(fx4-fx3);
fx5 = exerc12(x5)

% CP2 : abs(fx5) <= 0.001 ? Verdadeiro
% CP1 : abs(x5 - x4)./abs(x5) <= 0.001 ? Verdadeiro

% Resposta: A solução ótima é atingida ao final de 3 iterações, com h* =
% 0.431128 (valor de x5)

function f = exerc12(x)
    f = ((pi*x^(2)*(3-x))./3) - 0.5;
end


