function P = FisherExactTest( Genotype )
clc;
n = Genotype(1) + Genotype(2) + Genotype(3);
xA = 2*Genotype(1) + Genotype(2);
xa = 2*Genotype(3) + Genotype(2);

f = xA/2;   m = 0;  l = xa/2;
T = [ f , m , l ];
for k = 1:min( f , l )
    if f == Genotype(1)
        pos = k;
    end
    f = f - 1;  l = l - 1;  m = m + 2;
    T = [ T ; f , m , l ];
end

prob = [];

for k = 1:min( f , l )
    FisherP( T( k , : ) , Genotype )
    prob = [  prob , FisherP( T( k , : ) , Genotype )];
end
Psum = 0;
for k = 1:min( f , l )
    if prob( k ) <= prob( pos )
        Psum = Psum + prob( k );
    end
end
P = Psum;
end