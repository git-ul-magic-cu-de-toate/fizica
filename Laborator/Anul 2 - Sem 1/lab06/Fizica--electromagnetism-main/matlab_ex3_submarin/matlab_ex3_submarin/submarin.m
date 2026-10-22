% ex 3 - F3EM - Gabriela Ciuprina, 18 decembrie 2022
%
% Sa presupunem ca un submarin se afla scufundat la d=100 m fata de un vapor 
% aflat pe mare. Personalul aflat pe vapor doreste sa comunice cu submarinul, 
% folosind frecventa f=3 kHz.  Sa se calculeze puterea necesara emitatorului 
%(pe vapor) astfel inca receptorul (submarin) sa primeasca un semnal cu o
% amplitudine de minimum f_min = 1 uV/m .
clear all

% frecventa de comunicare
f = 3e3; % Hz
omega = 2*pi*f; % frecventa unghiulara [rad/s]

% proprietatile apei de mare
sigma = 4;      % conductivitate [S/m]
mu = 4*pi*1e-7; % permeabilitate [H/m]
epsr = 81;      % permitivitate relativa - adimensional
eps0 = 1/(36*pi*1e9); % permitivitatea absoluta a vidului [F/m] 
epsi = eps0*epsr; % permitivitatea absoluta a apei [F/m]

% campul minim la receptor
Emin = 1e-6; % V/m
% distanta dintre emitator si receptor
d = 100 % m

% tandelta >> 1 inseamna ca il putem aproxima ca un conductor foarte bun
tandelta = sigma/(omega*epsi)

beta = sqrt(omega*mu*sigma/2) % numar de unda (constanta de faza) [rad/m]
alpha = beta;    % coeficientul de atenuare [1/m]
delta = 1/alpha  % adancimea de patrundere [m]

Zc = sqrt(omega*mu/sigma) % impedanta caracteristica [Ohm]

% puterea (activa) minima la emitator
Pminzero = Emin^2*exp(2*alpha*d)/(2*Zc)*cos(pi/4) %[W/m^2]
% puterea (activa) care ajunge la receptor 
Preceptor = Pminzero*exp(-2*alpha*d) %[W/m^2]