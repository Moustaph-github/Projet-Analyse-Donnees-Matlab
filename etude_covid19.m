clear all

% Vecteur nombre de tests réalisés
Nb_tests_real=[1,2,2,2,2,2,2,6,1,8,6,11,3,2,21,44,27,22,56,31,...
    85,60,59,142,130,144,98,151,87,97,195,127,153,177,92,95,110,108,199,195,...
    173,104,144,272,227,435,287,226,313,281,466,482,387,528,703,579,677,...
    873,800,116,901,1190,810,807,702,1182,1027,872,848,1356,917,1099,...
    920,992,1128,989,816,1172,930,1042,1251,1199,934,889,1091,551,961,...
    991,1231,1370,1024,1820,1339,1549,1348,1700,1166,1266,1010,1402,1205,...
    1164,1005,1378,1223,1254,999,970,1406,1617,1247,978,1040,1045,987];

% a - Vecteur nombre de tests positifs

Nb_tests_posit=[1,1,2,0,0,0,0,0,0,1,5,11,3,2,1,4,5,2,9,9,11,12,7,13,6,14,11,12,...
    20,13,15,5,12,12,3,4,11,7,6,15,13,2,11,8,15,21,7,8,17,10,35,30,37,66,69,57,...
    64,87,59, 51,91,91,67,89,58,104,59,59,83,75,177,109,110,84,119,...
119,51,64,73,97,98,97,67,71,83,31,92,95,81,106,110,84,97,96,89,134,94,79,99,...
89,124,119,92,145,94,83,74,122,106,164,144,105,82,64,95];

% longueur du vecteur Nb_tests_real est égale au nombre de jours
nbre_jours_testes = length(Nb_tests_real) % nbre_jours_testes = 115 jours


% b - Données le vecteur taux de positivité journalière à partir de données des deux premiers vecteurs
%vect_taux_positivite vecteur taux de positivité
vect_taux_positivite =  Nb_tests_posit ./ Nb_tests_real 

% 2 - representé le taux de positivité et le nombre de cas positifs par jour
jours_testes = 1:nbre_jours_testes %  jours_testes = 1:115

%Partage fenetre en 2
subplot(1,4,1);
plot(jours_testes, vect_taux_positivite, '-*b');

%Le titre de la courbe 
title('Taux de positivité journalier', 'FontSize', 10, 'color', 'b')
xlabel('Jours testés', 'FontSize', 12)
ylabel('Taux de positvité', 'FontSize', 10, 'color', 'red')
legend('Taux positivité journalier')
hold on
%gradriller la fenetre avec grid on
grid on
subplot(1,4,2);

plot(jours_testes, Nb_tests_posit, '-*r');

%Le titre de la courbe 
title('Nombre de tests positifs journalier', 'FontSize', 10, 'color', 'b')
xlabel('Jours testés', 'FontSize', 12)
ylabel('Nombre de tests positifs', 'FontSize', 10, 'color', 'red')
legend('Tests positifs-journalier')

% Représenter le nombre de test réalisés dans une partie différente de la fenêtre graphique et l’affiner
hold on
grid on
subplot(1,4,3);
plot(jours_testes, Nb_tests_real, '-*y')
title('Nombre de tests réalisés', 'FontSize', 10, 'color', 'b')
xlabel('Jours testés', 'FontSize', 12)
ylabel('Nombre de tests réalisés', 'FontSize', 10, 'color', 'red')
legend('Nombre de test réalisé')

% 4—Représenter le diagramme en moustache des trois vecteurs dans une fenêtre séparée et l’interpréter
hold on
grid on
subplot(1,4,4);
boxplot([Nb_tests_real Nb_tests_posit vect_taux_positivite])
title('Diagramme en Moustaches', 'FontSize', 10, 'color', 'b')
