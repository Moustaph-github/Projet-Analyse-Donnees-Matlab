clear all

% Analyse de donn�es recueil des donn�es du questionnaire
donnees_questionnaire = [70, 30, 50, 150, 20, 180, 20, 200, 80];
% taux de r�ponse en %
Taux_reponse = [8.75, 3.75, 6.25, 18.75, 2.5, 22.5, 2.5, 25, 10];

% choix de r�ponse
choix_reponse = {'PME', 'Start up', 'R�seau', 'D�veloppement', 'Rurale',...
    'Urbaine', 'Public', 'Priv�', 'ONGs et autres'};

% moyenne
moy = mean(donnees_questionnaire) % moy = 88.8889

% variance
variance = var(donnees_questionnaire) % variance = 4.9111e+03

% �cart-type
ecart_type = sqrt(variance) % ecart_type = 70.0793


subplot(1,2,1)
plot(donnees_questionnaire, Taux_reponse, '-*b')

%Le titre de la courbe 
title('Taux de r�ponse', 'FontSize', 10, 'color', 'b')
xlabel('R�ponses/choix', 'FontSize', 12)
ylabel('Taux de r�ponse', 'FontSize', 10, 'color', 'red')
legend('Taux de r�ponse')
hold on
%gradriller la fenetre avec grid on
grid on
subplot(1,2,2);
explode = [1 1 1 1 1 1 1 1 1]; % espacement
pie3(Taux_reponse , explode ,choix_reponse)
title('Taux de r�ponse par Secteur', 'FontSize', 10, 'color', 'b')