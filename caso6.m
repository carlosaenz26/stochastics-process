%%
% Grafica punto 1
clc
clear all
%fun = @(x) 1/2 *((1/sqrt(6*pi)).*exp(-(x-5).^2/6))+((1/sqrt(4*pi)) *exp(-x.^2/4) );
%q = integral(fun,1,Inf); comprobacion de la integral de la pmf   

% fun = @(x)1/4 *(((1/sqrt(pi)).*exp(-(x).^2/4))+(sqrt(2/(3*pi))).*exp(-(1/6)*(x-5).^2)) ;
% 
% q = integral(fun,-inf,Inf);



x=-10:.001:15;
pdf = 1/4 *(((1/sqrt(pi)).*exp(-(x).^2/4))+(sqrt(2/(3*pi))).*exp(-(1/6)*(x-5).^2)) ;

plot(x,pdf)
title('PMF lectura de la señal')

xlabel('eje x ')
ylabel('f(x)')
grid on 

%%
%grafica 2 a r=-0.5;
clc
clear all 
[x,y] = meshgrid(-4:0.00666:4);
r=-0.5;
z= (1./ (2*pi*sqrt( 1-r^2))).*  exp ((-x.^ 2 -(2*r.*x.*y + y.^ 2)/( 2*(1 - r^2))));
figure
subplot(2,1,1);
mesh(z);
colorbar
title('mesh rho =0.1')
xlabel('eje x ')
ylabel('eje y ')
subplot(2,1,2); 
contour(z);
title('contour rho =0.1')

xlabel('eje x ')
ylabel('eje y ')
%%
%grafica 2 a r=0.9
clc
clear all
[x,y] = meshgrid(-3:0.00666:3);
r=0.9;
z=(1./ (2*pi*sqrt( 1-r^2))).*  exp ((-x.^ 2 -(2*r.*x.*y + y.^ 2)/( 2*(1 - r^2))));
figure
subplot(2,1,1);
mesh(z)
colorbar
title('mesh rho =0.9')
xlabel('eje x ')
ylabel('eje y ')
subplot(2,1,2); 
contour(z);
title('contour rho =0.9)')
xlabel('eje x ')
ylabel('eje y ')
%%
%grafica 2 a r=0.5
clc
clear all
[x,y] = meshgrid(-3:0.00666:3);
r=0.5;
z=(1./ (2*pi*sqrt( 1-r^2))).*  exp ((-x.^ 2 -(2*r.*x.*y + y.^ 2)/( 2*(1 - r^2))));
subplot(2,1,1);
mesh(z)
colorbar
title('mesh rho =0.5')
xlabel('eje x ')
ylabel('eje y ')
subplot(2,1,2); 
contour(x,y,z);
title('contour rho =0.5)')
xlabel('eje x ')
ylabel('eje y ')
%%
% grafica 2b
clc
clear all
data=load('datosCaso6.txt');
r=0.4;
x=data(:,1);
y=data(:,2);
[x1,y1] = meshgrid(-4:0.00666:4);
z= (1./ (2*pi*sqrt( 1-r^2))).*  exp ((-x1.^ 2 -(2*r.*x1.*y1 + y1.^ 2)/( 2*(1 - r^2))));
figure
scatter(x,y,20,'filled');
hold on
contour(x1,y1,z);
title('contour rho =0.4')
xlabel('eje x ')
ylabel('eje y ')

%% 
%grafica punto 4
clc
clear all
x=-10:.001:15;
pdf = 4/3 *exp(-4*(x))+4*exp(-6*(x));
plot(x,pdf);
xlim([0 2])
ylim([-0 10])
title('PDF')
xlabel('probabilidad ')
ylabel('f(x) ')
