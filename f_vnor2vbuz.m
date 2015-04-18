function [w,b]=f_vnor2vbuz(ux,uy,uz)
% Funci�n de conversi�n vector normal a vector buzamiento del plano
% Adri�n Riquelme, abril 2013
% Input:
% - componentes del vector normal al plano
% Output:
% - w: �ngulo que forma el vector de buzamiento con el eje OY, considerado
% como el norte
% - b: �ngulo que forma la línea de máxima pendiente del plano con su
% proyección horizontal.
uxy= (ux^2+uy^2)^(0.5);
bz=-uxy;
if uxy==0
    bx=0;
    by=0;
else
    bx=ux/uxy*uz;
    by=uy/uxy*uz;
end
bxy = abs(uz);
if bx>=0 && by>=0
    w = atan(bx/by);
end
if bx>0 && by<0
    w = pi-atan(abs(bx/by));
end
if bx<=0 && by<=0
    w = pi + atan(abs(bx/by));
end
if bx<0 && by>0
    w = 2*pi - atan(abs(bx/by));
end

b = atan(bz/bxy);

if bx==0 ||by==0
    w = 0;
end

w= w*180/pi;
b =-b*180/pi;