% training function for neutral images 

function [neutralFeatures]=cv_pro_trainNeutral() 

neutralFeatures=[0 0 0 0 0];

% Total number of Neutral images used to generate training data
neutralImgSize=22;

% Generating feature vectors for standard Neutral images from JAFFE Database
features=cv_pro_extractFeatures('KA.NE1.26.tiff');
for featI=1:size(features,2)
    neutralFeatures(featI)=neutralFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KA.NE2.27.tiff');
for featI=1:size(features,2)
    neutralFeatures(featI)=neutralFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KA.NE3.28.tiff');
for featI=1:size(features,2)
    neutralFeatures(featI)=neutralFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KL.NE1.155.tiff');
for featI=1:size(features,2)
    neutralFeatures(featI)=neutralFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KL.NE2.156.tiff');
for featI=1:size(features,2)
    neutralFeatures(featI)=neutralFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KM.NE1.1.tiff');
for featI=1:size(features,2)
    neutralFeatures(featI)=neutralFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KM.NE2.2.tiff');
for featI=1:size(features,2)
    neutralFeatures(featI)=neutralFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KM.NE3.3.tiff');
for featI=1:size(features,2)
    neutralFeatures(featI)=neutralFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KR.NE2.72.tiff');
for featI=1:size(features,2)
    neutralFeatures(featI)=neutralFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KR.NE3.73.tiff');
for featI=1:size(features,2)
    neutralFeatures(featI)=neutralFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('MK.NE1.113.tiff');
for featI=1:size(features,2)
    neutralFeatures(featI)=neutralFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('MK.NE3.115.tiff');
for featI=1:size(features,2)
    neutralFeatures(featI)=neutralFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NA.NE1.199.tiff');
for featI=1:size(features,2)
    neutralFeatures(featI)=neutralFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NA.NE2.200.tiff');
for featI=1:size(features,2)
    neutralFeatures(featI)=neutralFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NM.NE1.92.tiff');
for featI=1:size(features,2)
    neutralFeatures(featI)=neutralFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('TM.NE1.177.tiff');
for featI=1:size(features,2)
    neutralFeatures(featI)=neutralFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('TM.NE2.178.tiff');
for featI=1:size(features,2)
    neutralFeatures(featI)=neutralFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('TM.NE3.179.tiff');
for featI=1:size(features,2)
    neutralFeatures(featI)=neutralFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('UY.NE2.135.tiff');
for featI=1:size(features,2)
    neutralFeatures(featI)=neutralFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('UY.NE3.136.tiff');
for featI=1:size(features,2)
    neutralFeatures(featI)=neutralFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('YM.NE2.50.tiff');
for featI=1:size(features,2)
    neutralFeatures(featI)=neutralFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('YM.NE3.51.tiff');
for featI=1:size(features,2)
    neutralFeatures(featI)=neutralFeatures(featI)+features(featI);
end

% Calculating average of feature vector
neutralFeatures=neutralFeatures./neutralImgSize;

end
