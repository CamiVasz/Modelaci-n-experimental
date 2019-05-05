%Modelacion experimental.
% Simulacion de un proceso MA.
cd 'D:\Universidad\8Semestre\ModExperimental\Practicas\Practica1\Codigos'

ma1 = gen_ma(800, [0, 0.23 0.87 0.92]);
ma2 = gen_ma(800, [10, 0.23 0.87 0.92]);
ma3 = gen_ma(800, [20, 0.23 0.87 0.92]);
ma4 = gen_ma(800, [30, 0.23 0.87 0.92]);

createfigure([ma1, ma2, ma3, ma4])
ylim([-5,50]);
title('MA(1)');

%%
%Simulacion de proceso con ruido blanco que distribuye como la combinacion
%lineal de dos distribuciones normales

%Proceso MA(3)

ma1 = gen_ma_ruido_combinado(800, [0, 0.23 0.87 0.92]);
ma2 = gen_ma_ruido_combinado(800, [100, -0.23 0.87 0.92]);
ma3 = gen_ma_ruido_combinado(800, [200, 0.23 1.87 0.92]);
ma4 = gen_ma_ruido_combinado(800, [315, 0.23 0.87 -0.92]);

%Grafica de los procesos
createfigure([ma1, ma2, ma3, ma4])
title('MA(3)');
ylim([-50,420]);


