%Modelacion experimental.
% Simulacion de un proceso MA.

% La funcion gen_ma recibe dos parametros:
% par: los parametros del proceso MA a simular.
% nobs: el numero de observaciones del proceso.
% Y retorna una serie con las observaciones del proceso.

function serie = gen_ma_ruido_combinado(nobs, par)
% Inicializamos la serie en cero.
  serie = zeros(nobs, 1);
 % Numero de parametros
 q = length(par);
 % Generamos ruido blanco
 r_blanco = ruido(1,10,0.1,nobs + q);
  
  
  % Simulamos el proceso
  for i = q+1:nobs+q 
    serie(i - q) = serie(i - q) + par(1);
    for j = 1:q-1 
      serie(i - q) = serie(i - q) + r_blanco(i - j - 1)*par(j + 1);
    end
  end
end