%
% Não polinomial
%

% Tabela
% valores do x_i separados por espaço
x = [];

% valores do f(x_i) separados por espaço
y = [];

% [1,1] utilizado por defeito, é uma aproximação
% s => soma do quadrado dos residuos (erro)
[c,s] = lsqcurvefit(@funcao,[1,1],x,y);

% calcular c no valor
func(c,valor)

% obter o erro
s

function f = funcao(c)
f= ; % o que se encontra no modelo
end