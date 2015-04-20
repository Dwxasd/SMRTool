function [ coeff2 ] = f_coeff2( alphas, alphaj, betaj )
% [ coeff2 ] = f_coeff2( alphas, alphaj, betaj )
% Calculates SMR adjustment factor F2
%    Copyright (C) {2015}  {Adri�n Riquelme Guill, adririquelme@gmail.com}
%
%    This program is free software; you can redistribute it and/or modify
%    it under the terms of the GNU General Public License as published by
%    the Free Software Foundation; either version 2 of the License, or
%    any later version.
%
%    This program is distributed in the hope that it will be useful,
%    but WITHOUT ANY WARRANTY; without even the implied warranty of
%    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%    GNU General Public License for more details.
%
%    You should have received a copy of the GNU General Public License along
%   with this program; if not, write to the Free Software Foundation, Inc.,
%   51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
%    SMRTool, Copyright (C) 2015 Adri�n Riquelme Guill
%    SMRTool comes with ABSOLUTELY NO WARRANTY.
%    This is free software, and you are welcome to redistribute it
%    under certain conditions.

aux = abs(alphas - alphaj);
if aux > 180 
    aux = 360 - aux;
end
if aux >= 90 
    % rotura vuelco
    coeff2 = 1;
else
    % rotura plana o en cu�a
    if betaj <= 20 
        coeff2 = 0.15;
    end
    if betaj > 20 && betaj <= 30 
        coeff2 = 0.4;
    end
    if betaj > 30 && betaj <= 35 
        coeff2 = 0.7;
    end
    if betaj > 35 && betaj <= 45 
        coeff2 = 0.85;
    end
    if betaj > 45 
        coeff2 = 1;
    end
end

end

