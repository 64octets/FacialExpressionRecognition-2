% training function for fear images 

function [fearFeatures]=cv_pro_trainFear() 

fearFeatures=[0 0 0 0 0];

% Total number of Fear images used to generate training data
fearImgSize=25;

% Generating feature vectors for standard Fear images from JAFFE Database
features=cv_pro_extractFeatures('KA.FE1.45.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KA.FE2.46.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KA.FE3.47.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KL.FE1.174.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KL.FE2.175.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KL.FE3.176.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KM.FE1.23.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KM.FE2.24.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KM.FE3.25.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KR.FE1.89.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KR.FE2.90.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KR.FE3.91.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('MK.FE1.131.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('MK.FE2.132.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NA.FE2.218.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NA.FE3.219.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NM.FE1.110.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('TM.FE1.196.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('TM.FE3.198.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('UY.FE1.152.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('UY.FE2.153.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('YM.FE1.67.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('YM.FE2.68.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('YM.FE3.69.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('YM.FE4.70.tiff');
for featI=1:size(features,2)
    fearFeatures(featI)=fearFeatures(featI)+features(featI);
end




% Calculating average of feature vector
fearFeatures=fearFeatures./fearImgSize;



end
