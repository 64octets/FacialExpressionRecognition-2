% Euclidean distance to comapre feature values 

function [distValue]=findDistEuclidean(featureA, test)
  
eucDist = norm( featureA - test );

distValue=eucDist;
end