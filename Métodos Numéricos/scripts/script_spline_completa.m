% Colocar os valores das linhas da tabela separados por espaço

%
% Atenção ver se se usa os pontos todos ou não, ou seja, ver se dão a
% derivada dos pontos, se derem usa-se os pontos todos
%

x = [];
y = [];

f_linha_0 = ; % DD1
f_linha_n = ; % DD1

sp = spline(x,[f_linha_0 y f_linha_n]);
% Para descobrir um certo ponto acresncta-se no fim o ponto
% sp = spline(x,[f_linha_0 y f_linha_n], ponto);

% Coeficientes dos segmentos,são polinomios de grau 3 logo saem 4 valores
sp.coefs

% Exemplo para obter os valores corretos
% x0 = primeiro valor de x do segmento
% c_i é o valor obtido no sp.coefs pra o indice i
% c0(x-x0)^3 + c1(x-x0)^2  + c2(x-xo) + c3