%Modelacion experimental.
% Simulacion de un proceso MA.

% Generador de ruido blanco
% Recibe un parametro:
% El numero de observaciones a generar.
% Retorna una serie de ruido blanco.
function serie = ruido_blanco(nobs)
    serie = randn(nobs, 1);
end