% function using (Mahalanobis distance) to extract features from image and recognize expression
function [expression]=cv_pro_detectExpressionDistMaha(imgTest,happyFeaturesF,sadFeaturesF,angryFeaturesF,surpriseFeaturesF,fearFeaturesF,neutralFeaturesF,disgustFeaturesF)

% Extracting features from image
testFeatures=cv_pro_extractFeatures(imgTest);

% Finding distance between testFeatures and features of all facial expressions

% finding distance measure between happyFeatures and testFeatures
diffFeatures=findDistMaha(happyFeaturesF,testFeatures);
happySumDiffFeatures=sum(diffFeatures);

% finding distance measure between sadFeatures and testFeatures
diffFeatures=findDistMaha(sadFeaturesF,testFeatures);
sadSumDiffFeatures=sum(diffFeatures);

% finding distance measure between angryFeatures and testFeatures
diffFeatures=findDistMaha(angryFeaturesF,testFeatures);
angrySumDiffFeatures=sum(diffFeatures);

% finding distance measure between surpriseFeatures and testFeatures
diffFeatures=findDistMaha(surpriseFeaturesF,testFeatures);
surpriseSumDiffFeatures=sum(diffFeatures);

% finding distance measure between fearFeatures and testFeatures
diffFeatures=findDistMaha(fearFeaturesF,testFeatures);
fearSumDiffFeatures=sum(diffFeatures);

% finding distance measure between neutralFeatures and testFeatures
diffFeatures=findDistMaha(neutralFeaturesF,testFeatures);
neutralSumDiffFeatures=sum(diffFeatures);

% finding distance measure between disgustFeatures and testFeatures
diffFeatures=findDistMaha(disgustFeaturesF,testFeatures);
disgustSumDiffFeatures=sum(diffFeatures);


% finding minimum sumDiffFeatures distance
%minSumDiffDist=min(happySumDiffFeatures,sadSumDiffFeatures,angrySumDiffFeatures,surpriseSumDiffFeatures,fearSumDiffFeatures,neutralSumDiffFeatures,disgustSumDiffFeatures);
minSumDiffDist=999999;

if(happySumDiffFeatures<=minSumDiffDist)
    minSumDiffDist=happySumDiffFeatures;
end
if(sadSumDiffFeatures<=minSumDiffDist)
    minSumDiffDist=sadSumDiffFeatures;
end
if(angrySumDiffFeatures<=minSumDiffDist)
    minSumDiffDist=angrySumDiffFeatures;
end
if(surpriseSumDiffFeatures<=minSumDiffDist)
    minSumDiffDist=surpriseSumDiffFeatures;
end
if(fearSumDiffFeatures<=minSumDiffDist)
    minSumDiffDist=fearSumDiffFeatures;
end
if(neutralSumDiffFeatures<=minSumDiffDist)
    minSumDiffDist=neutralSumDiffFeatures;
end
if(disgustSumDiffFeatures<=minSumDiffDist)
    minSumDiffDist=disgustSumDiffFeatures;;
end


% finding the expression for minSumDiffDist distance for an image
if(happySumDiffFeatures==minSumDiffDist)
    expression='happy';
elseif(sadSumDiffFeatures==minSumDiffDist)
    expression='sad';
elseif(angrySumDiffFeatures==minSumDiffDist)
    expression='angry';
elseif(surpriseSumDiffFeatures==minSumDiffDist)
    expression='surprise';
elseif(fearSumDiffFeatures==minSumDiffDist)
    expression='fear';
elseif(neutralSumDiffFeatures==minSumDiffDist)
    expression='neutral';
elseif(disgustSumDiffFeatures==minSumDiffDist)
    expression='disgust';
end

end