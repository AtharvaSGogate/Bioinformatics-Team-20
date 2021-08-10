function N = Newgeneration( Old_generation , Num_matings );
N = [];
for k = 1:Num_matings
    F = Old_generation(randi( length( Old_generation ) ));
    M = Old_generation(randi( length( Old_generation ) ));
    
    if F+M == 2
        N = [ N , 1 , 1 , 1 , 1 ];
    elseif F + M == 4
        N = [ N , 1 , 1 , 3 , 3 ];
    elseif F + M == 6
        N = [ N , 1 , 3 , 3 , 7 ];
    elseif F + M == 8
        N = [ N , 3 , 3 , 3 , 3 ];
    elseif F + M == 10
        N = [ N , 3 , 3 , 7 , 7 ];
    elseif F + M == 14
        N = [ N , 7 , 7 , 7 , 7 ];
    end
end
end
