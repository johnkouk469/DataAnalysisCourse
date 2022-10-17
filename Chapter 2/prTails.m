function pr = prTails(experiment)

    pr = 0;
    for i=1:size(experiment,2)
        if experiment(i) == 1
            pr = pr+1;
        end
    end
    pr = pr / size(experiment,2);
    
end

