function N = Newgeneration_with_natural_selection( Old_generation , Num_matings , Natural_selection_advantage );
N = [];
for k = 1:Num_matings
    F = Old_generation(randi( length( Old_generation ) ));
    M = Old_generation(randi( length( Old_generation ) ));
    if F+M == 2
        if rand(1) < Natural_selection_advantage(1)
            N = [ N , 1 , 1 , 1 , 1 ];
        end
    elseif F + M == 4
        if rand(1) < Natural_selection_advantage(2)
            N = [ N , 1 , 1 , 3 , 3 ];
        end
    elseif F + M == 6
        if rand(1) < Natural_selection_advantage(3)
            N = [ N , 1 , 3 , 3 , 7 ];
        end
    elseif F + M == 8
        if rand(1) < Natural_selection_advantage(4)
        N = [ N , 3 , 3 , 3 , 3 ];
        end
    elseif F + M == 10
        if rand(1) < Natural_selection_advantage(5)
            N = [ N , 3 , 3 , 7 , 7 ];
        end
    elseif F + M == 14
        if rand(1) < Natural_selection_advantage(6)
            N = [ N , 7 , 7 , 7 , 7 ];
        end
    end
end