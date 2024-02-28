% 1-Compl�ter et interpr�ter le code suivant pour le trac�  de cette fonction.
% Ce code permet de tracer la fonction de la loi normale
% distribution normale

X = [ 10:.1:100]; % veteur 10 � 100 par pas de 0.1
sigma = 10; mu = 50;

Gauss = exp( -(X - mu) .*(X - mu) / (2*sigma^2) ) / (sqrt(2*pi) * sigma); % formule fonction
plot( X , Gauss,'r') 
% plot permet trace la fonction de la loi normale en recevant en param�tre
% X, Gauss, 'r' = 'red' courbe en couleur rouge
