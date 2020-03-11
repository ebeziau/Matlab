clear all;
clc;
clf;
format long e;

%% Exercice 1 : Tracer les diagrammes de Bode d'un intégrateur 1/jw

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

%% Exercice 2 : Créer une matrice (5x20) dnot tous les éléments d'une colonne
%sont égaux au numéro de la colonne.

clear all;
clc;
clf;
format long e;

m = ones(5,20);
for i=1:20
    m(:,i)= m(:,i)*i;
end

%% Exercice 3 : Somme de 2 vecteurs de taille différente:
%    A = [1 2 3 4];
%    B=[5,6];
%    C=[1 2 8 10];
% C = A+B;

clear all;
clc;
clf;
format long e;

A = [1 2 3 4];
B=[5,6];
lA = length(A);
lB = length(B);
if lA>lB 
    B=[zeros(1,(lA-lB)) B];
else A=[zeros(1,(lB-lA)) A];
end
C =  A+B

%% Exercice 4 : G=(s+1)/s(s2+3s+2)
% Tracer le diagrammes de Bode, et Nichols de G(jw)

clear all;
clc;
clf;
format long e;

NumG = [1 1];
DenG=[1 3 2 0];
w=logspace(-3,3,100);
[g,p]=bode(NumG,DenG,w);
gdB=20*log10(g);
figure(1);
subplot(211);
semilogx(w,gdB);
grid;
xlabel('w(rad/s)');
ylabel('Module(dB)');
title('Diagrammes de Bode');
subplot(212);
semilogx(w,p);
grid;
xlabel('w(rad/s)');
ylabel('Argument(°)');
figure(2);
nichols(NumG,DenG,w);
ngrid;
xlabel('Argument(°)');
ylabel('Module(dB)');
title('Lieu de Nichols de G(jw)');

tmin = 0;
tmax = 10;
Nt = 100;
t = linspace(tmin,tmax,Nt);
[y,x] = step(NumG,DenG,t);
figure(3);
plot(t,y);
grid;
xlabel('t(s)');
ylabel('y');
title('Réponse indicielle de G(jw)');
















