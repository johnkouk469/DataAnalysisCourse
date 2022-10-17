function meanOfmean = poissonSamples(M,n,lambda)
    
    meanX = zeros(1,M);
    
    X = poissrnd(lambda,n,M);
    meanX = mean(X);
    
    clf
    histogram(meanX);
    
    meanOfmean = mean(meanX);
    
end

