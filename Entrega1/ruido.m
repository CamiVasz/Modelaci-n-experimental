% Ruido con dos normales

% La funcion ruido recibe 4 parametros
% sigma1 la varianza de la primera normal
% sigma2 la varianza de la segunda normal
% alfa la ponderacion, alfa en (0,1)
% nobs el numero de observaciones a generar

function serie = ruido(sigma1, sigma2, alfa, nobs)
serie = zeros(1, nobs);
dist1 = zeros(1, alfa*100);
dist2 = ones(1, (1-alfa)*100);
dist = [dist1,dist2];
for i = 1 : nobs
    a = randi([1,100]);
    b = dist(a) + 1;
    samp = [sigma1*randn(), sigma2*randn()];
    serie(i) = samp(b);
end
end


