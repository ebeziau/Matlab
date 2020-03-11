clear all;
clc;
clf;
format long e;

%Exercice 1 : Tracer les diagrammes de Bode d'un intégrateur

w = logspace(-2,2,100);
gdB = 20*log10(1./w);
p = -90*ones(1,100);
figure(1);
subplot(211);
semilogx(w,gdB);
grid;
xlabel('w(rad/s)');
ylabel('Module(dB)');
subplot(212);
semilogx(w,p);
grid;
xlabel('w (rad/s)');
ylabel('Argument(°)');
title('Réponse en fréquences d un intégrateur');

%Exercice 2 : Créer une matrice (5x20) dnot tous les éléments d'une colonne
%sont égaux au numéro de la colonne.

clear all;
clc;
clf;
format long e;

m = ones(5,20);
for i=1:20
    m(:,i)= m(:,i)*i;
end

m

