function [ coeff1 ] = f_coeff1tomas( alphas, alphaj )
% [ coeff1 ] = f_coeff1( alphas, alphaj )
% C�lculo del factor F1 para el SMR de Romana seg�n las funciones cont�nuas de Roberto Tom�s et al 2007
% Adri�n Riquelme, Enero 2014
% alphas: azimuth of dip vector of slope, in degrees
% alphaj: azimith of dip vector of discontinuity in degrees
aux = f_Acoeff1(alphas, alphaj);
coeff1 = 16 / 25 - 3 / 500 * atan((abs(aux) - 17) / 10) * 180 / pi;
end

