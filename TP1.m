clear all;
clc;
clf;
format long e;

%Exercice 1 : Tracer les diagrammes de Bode d'un int�grateur

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
ylabel('Argument(�)');
title('R�ponse en fr�quences d un int�grateur');

%Exercice 2 : Cr�er une matrice (5x20) dnot tous les �l�ments d'une colonne
%sont �gaux au num�ro de la colonne.

clear all;
clc;
clf;
format long e;

m = ones(5,20);
for i=1:20
    m(:,i)= m(:,i)*i;
end

m

