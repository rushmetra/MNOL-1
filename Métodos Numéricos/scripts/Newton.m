% ============================================
% Método de Newton (iterativo, com derivadas)
% ============================================
%
% Exercicio 16: Vulcão em erupção
% f(x) = 7 (2 − 0.9 t ) - 10

format long;


x0=6;
options=optimset('tolfun',1e-3);
[xsol,fsol,exitflag,output]=fsolve(@exerc16, x0, options)

%% xsol e fsol correspondem a x* e f(x*), respetivamente

function f = exerc16(x)
    f = 7*(2-0.9^(x))-10;
end

