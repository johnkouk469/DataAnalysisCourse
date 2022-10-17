function meanOfmean = expSamples(M,n,lambda)
    
    meanX = zeros(1,M);
    
    X = exprnd(lambda,n,M);
    meanX = mean(X);
    
    clf
    histogram(meanX);
    
    meanOfmean = mean(meanX);
    
end

