function [ coeff3tomas ] = f_coeff3tomas( alphas, alphaj, betas, betaj )
%UNTITLED5 Summary of this function goes here
% ' C�lculo del factor F2 para el SMR de Romana seg�n las funciones cont�nuas de Roberto Tom�s et al 2007
% ' Adri�n Riquelme, Enero 2014
% ' alphas: azimuth of dip vector of slope, in degrees
% ' alphaj: azimith of dip vector of discontinuity in degrees
% ' betas: value of dip vector of the discontinuity, in degrees
aux = abs(alphas - alphaj);
if aux > 180 
    aux = 360 - aux;
end
if aux >= 90 
    %rotura vuelco
    coeff3tomas = -13 - 1 / 7 * atan(betas + betaj - 120) * 180 / pi;
    else
    %rotura Cu�a/Plana
    coeff3tomas = -30 + 1 / 3 * atan(betaj - betas) * 180 / pi;
end


end

