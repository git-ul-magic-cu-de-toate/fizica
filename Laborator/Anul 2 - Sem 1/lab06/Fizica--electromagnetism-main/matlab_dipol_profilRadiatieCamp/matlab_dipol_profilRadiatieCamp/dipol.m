% profil de radiatie 2D, pentru camp, dipol electric 
% Gabriela Ciuprina, 18 decembrie 2022

theta = linspace(0,pi,100);
x = theta;
%y = sin(theta);
%lpelambda = 0.01;
%lpelambda = 0.5; % l = lambda/2
% lpelambda = 3/4; % l = 0.75*lambda
% lpelambda = 1; % l = lambda
 lpelambda = 5/4; % l = 1.25*lambda
% lpelambda = 3/2; % l = 1.5*lambda
% lpelambda = 2; % l = 2*lambda

y = (cos(pi*lpelambda.*cos(theta))-cos(pi*lpelambda))./sin(theta);
ymax = max(abs(y));
disp(ymax);
y = y/ymax;

figure(1);
plot(x*180/pi,y);
xlabel('\theta [grd]');
ylabel('f(\theta)/fmax');
grid on;

% plot polar obisnuit
figure(2);
polarplot(theta,y);
title('Polar plot, with \theta - measured from the Ox axis (usual math representation)')

% plot polar ca la antene
thetaP = - theta + pi/2;
figure(3);
polarplot(thetaP,y);
tv = thetaticks;
tvP = -thetaticks + 90;
thetaticks([0 90 180 270])
thetaticklabels({'East','North','West','South'})
thetaticks([0    30    60    90   120   150   180   210   240   270   300   330   360])
%thetaticklabels({'90','60','30','0','330','300','270','240','210','180','150','120','90'})
thetaticklabels({'90','60','30','0','','','','','','180','150','120','90'})
title('Polar plot, with \theta - measured from the Oz axis (antenna representation, \phi = 0)')

figure(4);
polarplot(thetaP,-y,'-r');
thetaticks([0    30    60    90   120   150   180   210   240   270   300   330   360])
%thetaticklabels({'90','60','30','0','330','300','270','240','210','180','150','120','90'})
%thetaticklabels({'90','60','30','0','','','','','','180','150','120','90'})
thetaticklabels({'','','','0','30','60','90','120','150','180','','',''})
title('Polar plot, with \theta - measured from the Oz axis (antenna representation, \phi = \pi)')

figure(5); 
polarplot(thetaP,y,'-b'); hold on;
polarplot(thetaP,-y,'-r');
thetaticks([0    30    60    90   120   150   180   210   240   270   300   330   360])
%thetaticklabels({'90','60','30','0','330','300','270','240','210','180','150','120','90'})
thetaticklabels({'90','60','30','0','30','60','90','120','150','180','150','120','90'})
title('Dipole 2D pattern (normalized field pattern)');


