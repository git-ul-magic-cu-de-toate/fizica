function P3_util_dreptunghiular()
% P3_util_dreptunghiular, ilustreaza suprapunerea semnalului util cu cel parazit
% semnalul util este patrat
% semnalul parazit este sinusoidal
Baud = 9600;
frecv_u = Baud/2; % Hz

MHz = 1e6;
%frecv_p = 10*MHz; % frecventa semnalului parazit
frecv_p = 1*MHz; 
%frecv_p = 0.1*MHz;
omega_u = 2*pi*frecv_u;
omega_p = 2*pi*frecv_p;

Cu = 1;     % Em/(Rcablu + R)
%Cp = 1e-9; % A*Bm/(Rcablu + R)
Cp = 1e-8;  % A*Bm/(Rcablu + R)
%Cp = 1e-7;

T_u = 1/frecv_u; % perioada semnalului util
T_p = 1/frecv_p;

nop = 2;
if (T_u > T_p)
    tmax = nop*T_u;
else
    tmax = nop*T_p;
end
nopp = 10000;
t = linspace(0,tmax,nopp);
rez = f(t);
figure(1); clf;
plot(t,rez.u,'-b','Linewidth',2); hold on;
plot(t,rez.p,'-k');
plot(t,rez.tot,'-r','Linewidth',1);
legend('util','parazit','total');
xlabel('Timp [s]');

    function rez = f(t)
        rez.u = Cu*(sign(sin(omega_u*t))+1)/2;
        rez.p = - Cp*omega_p*cos(omega_p*t);
        rez.tot = rez.u + rez.p;
     end

end

