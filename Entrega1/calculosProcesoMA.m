%calculo de media y varianzas
%help var

%Simulacion de los procesos
%%
%proceso MA(1)
Y1 = gen_ma(800, [0, 0.5]);
Y2 = gen_ma(800, [10, -0.5]);
Y3 = gen_ma(800, [20, 2]);
Y4 = gen_ma(800, [30, -2]);


%varianzas teóricas
vary1 = 1 + 0.5^2 ;
vary2 = 1 + 0.5^2 ;
vary3 = 1 + 2^2 ;
vary4 = 1 + 2^2;

varianzasTeoricasMA1 = [vary1 vary2 vary3 vary4];

%varianzas muestrales
vary1 = var(Y1);
vary2 = var(Y2);
vary3 = var(Y3);
vary4 = var(Y4);
varianzasMuestralesMA1 = [vary1 vary2 vary3 vary4];
%%
%proceso MA(2)
Y1 = gen_ma(800, [0, 0.5 0.2]);
Y2 = gen_ma(800, [10, 0.5 -0.2]);
Y3 = gen_ma(800, [20, -0.5 -0.2]);
Y4 = gen_ma(800, [30, -0.5 0.2]);


%varianzas teóricas
vary1 = 1 + 0.5^2 + 0.2^2;
vary2 = 1 + 0.5^2 + 0.2^2;
vary3 = 1 + 0.5^2 + 0.2^2;
vary4 = 1 + 0.5^2 + 0.2^2;

varianzasTeoricasMA2 = [vary1 vary2 vary3 vary4];

%varianzas muestrales
vary1 = var(Y1);
vary2 = var(Y2);
vary3 = var(Y3);
vary4 = var(Y4);
varianzasMuestralesMA2 = [vary1 vary2 vary3 vary4];
%%
%proceso MA(3)
Y1 = gen_ma(800, [0, 0.23 0.87 0.92]);
Y2 = gen_ma(800, [10, -0.23 0.87 0.92]);
Y3 = gen_ma(800, [20, 0.23 1.87 0.92]);
Y4 = gen_ma(800, [30, 0.23 0.87 -0.92]);

%varianzas teóricas
vary1 = 1 + 0.23^2 + 0.87^2 + 0.92^2;
vary2 = 1 + 0.23^2 + 0.87^2 + 0.92^2;
vary3 = 1 + 0.23^2 + 1.87^2 + 0.92^2;
vary4 = 1 + 0.23^2 + 0.87^2 + 0.92^2;

varianzasTeoricasMA3 = [vary1 vary2 vary3 vary4];

%varianzas muestrales
vary1 = var(Y1);
vary2 = var(Y2);
vary3 = var(Y3);
vary4 = var(Y4);
varianzasMuestralesMA3 = [vary1 vary2 vary3 vary4];

%%
%proceso MA(4)
Y1 = gen_ma(800, [0, 0.23 0.87 0.92 0.00001]);
Y2 = gen_ma(800, [10, 0.23 0.87 0.92 1]);
Y3 = gen_ma(800, [20, 0.23 0.87 0.92 2]);
Y4 = gen_ma(800, [35, 0.23 0.87 0.92 3]);

%varianzas teóricas
vary1 = 1 + 0.23^2 + 0.87^2 + 0.92^2 + 0.00001^2;
vary2 = 1 + 0.23^2 + 0.87^2 + 0.92^2 + 1^2;
vary3 = 1 + 0.23^2 + 0.87^2 + 0.92^2 + 2^2;
vary4 = 1 + 0.23^2 + 0.87^2 + 0.92^2 + 3^2;

varianzasTeoricasMA4 = [vary1 vary2 vary3 vary4];

%varianzas muestrales
vary1 = var(Y1);
vary2 = var(Y2);
vary3 = var(Y3);
vary4 = var(Y4);
varianzasMuestralesMA4 = [vary1 vary2 vary3 vary4];


%%
%Simulacion de proceso con ruido blanco que distribuye como la combinacion
%lineal de dos distribuciones normales

%Proceso MA(3)

Y1 = gen_ma_ruido_combinado(800, [0, 0.23 0.87 0.92]);
Y2 = gen_ma_ruido_combinado(800, [100, -0.23 0.87 0.92]);
Y3 = gen_ma_ruido_combinado(800, [200, 0.23 1.87 0.92]);
Y4 = gen_ma_ruido_combinado(800, [315, 0.23 0.87 -0.92]);

%Varianzas teoricas
vary1 = (1 + 0.23^2 + 0.87^2 + 0.92^2)*10;
vary2 = (1 + 0.23^2 + 0.87^2 + 0.92^2)*10;
vary3 = (1 + 0.23^2 + 1.87^2 + 0.92^2)*10;
vary4 = (1 + 0.23^2 + 0.87^2 + 0.92^2)*10;

varianzasTeoricasMA3_ruidoCombinado = [vary1 vary2 vary3 vary4];

%Varianzas muestrales
vary1 = var(Y1);
vary2 = var(Y2);
vary3 = var(Y3);
vary4 = var(Y4);
varianzasMuestralesMA3_ruidoCombinado = [vary1 vary2 vary3 vary4];

%%
%Grafica del proceso
createfigure([ma1,ma2,ma3,ma4])
