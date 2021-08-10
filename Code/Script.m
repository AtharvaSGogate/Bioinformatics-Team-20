clc;
AA = ones( 1 , 33 );
Aa = 3*ones( 1 , 33 );
aa = 7*ones( 1 , 33 );

Ancestors = [ AA , Aa , aa ];
natural_selection = [ 0.25 , 0.25 , 0.2 , 0.15 , 0.1 , 0.05 ];
% natural_selection = [ 1/6 , 1/6 , 1/6 , 1/6 , 1/6 , 1/6 ];
N = 30;
R = [];
for k = 1:N
    M = Generations( Ancestors , k  , natural_selection);
    R = [ R , M ];
end
figure;
plot( 1:N , R( 1 , : ) , '-b' , 1:N , R( 3 , : ) ,'-r', 1:N , R( 7 , : ) , '-g' );
grid minor;
ylim( [ 0 , 100 ] );
title('Natural selection');
xlabel('Number of generations');
ylabel('Percentage of total number of organisms');
legend('Species with the AA genotype' , 'Species with the Aa genotype' , 'Species with the aa genotype')