% not used by cv_pro_script (update line:46 in cv_pro_trainAndTest.m to use this distance)
% create new training "trained.mat" file if distance measure is changed

% function to recognize expression in test image using direct distance(Euclidean)
function [expression]=cv_pro_detectExpressionDistEuclidean(imgTest,happyFeaturesF,sadFeaturesF,angryFeaturesF,surpriseFeaturesF,fearFeaturesF,neutralFeaturesF,disgustFeaturesF)

% testing image name here
testFeatures=cv_pro_extractFeatures(imgTest);

% finding distance measure between happyFeatures and testFeatures
for featI=1:size(happyFeaturesF,2)
    diffFeatures(featI)=findDistEuclidean(happyFeaturesF(featI),testFeatures(featI));
end

happySumDiffFeatures=sum(diffFeatures);

% finding distance measure between sadFeatures and testFeatures
for featI=1:size(sadFeaturesF,2)
    diffFeatures(featI)=findDistEuclidean(sadFeaturesF(featI),testFeatures(featI));
end

sadSumDiffFeatures=sum(diffFeatures);

% finding distance measure between angryFeatures and testFeatures
for featI=1:size(angryFeaturesF,2)
    diffFeatures(featI)=findDistEuclidean(angryFeaturesF(featI),testFeatures(featI));
end

angrySumDiffFeatures=sum(diffFeatures);

% finding distance measure between surpriseFeatures and testFeatures
for featI=1:size(surpriseFeaturesF,2)
    diffFeatures(featI)=findDistEuclidean(surpriseFeaturesF(featI),testFeatures(featI));
end

surpriseSumDiffFeatures=sum(diffFeatures);

% finding distance measure between fearFeatures and testFeatures
for featI=1:size(fearFeaturesF,2)
    diffFeatures(featI)=findDistEuclidean(fearFeaturesF(featI),testFeatures(featI));
end

fearSumDiffFeatures=sum(diffFeatures);

% finding distance measure between neutralFeatures and testFeatures
for featI=1:size(neutralFeaturesF,2)
    diffFeatures(featI)=findDistEuclidean(neutralFeaturesF(featI),testFeatures(featI));
end

neutralSumDiffFeatures=sum(diffFeatures);

% finding distance measure between disgustFeatures and testFeatures
for featI=1:size(disgustFeaturesF,2)
    diffFeatures(featI)=findDistEuclidean(disgustFeaturesF(featI),testFeatures(featI));
end

disgustSumDiffFeatures=sum(diffFeatures);

% finding minimum sumDiffFeatures distance
minSumDiffDist=99999;

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


% finding the expression for minSumDiffDist distance
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