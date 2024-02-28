n = input('Saisir la valeur de d�but du vecteur ? ');
m = input('Saisir la valeur de fin du vecteur ? ');
i = input('Saisir le pas ? ');
X = [ n:i:m]; % veteur n � m par pas de i

sigma = input('Saisir sigma ? ');
mu = input('Saisir mu ? ');

% formule fonction
Gauss = exp( -(X - mu) .*(X - mu) / (2*sigma^2) ) / (sqrt(2*pi) * sigma); 
plot( X , Gauss,'r') 
% plot permet trace la fonction de la loi normale en recevant en param�tre
% X, Gauss, 'r' courbe en couleur rouge