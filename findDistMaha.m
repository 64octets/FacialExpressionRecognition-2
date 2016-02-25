% Mahalanobis distance to comapre feature values 

function [distValue]=findDistMaha(featureA, test)
S=cov(test);
mu=mean(test,1);

distValue=(featureA-mu)*inv(S)*(featureA-mu)';

end