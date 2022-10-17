function r = flip_coin_experiment(n)

    r = zeros(1,n);
    for i=1:n
        if rand()>=0.5
            r(i)=1;
        else
            r(i)=0;
        end
    end

end

