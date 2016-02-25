% training function for disgust images

function [disgustFeatures]=cv_pro_trainDisgust() 

disgustFeatures=[0 0 0 0 0];

% Total number of disgust images used to generate training data
disgustImgSize=23;

% Generating feature vectors for standard Disgust images from JAFFE Database
features=cv_pro_extractFeatures('KA.DI1.42.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KL.DI1.170.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KL.DI2.171.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KL.DI3.172.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KM.DI1.20.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KM.DI3.22.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KR.DI1.86.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KR.DI2.87.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KR.DI3.88.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('MK.DI2.129.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('MK.DI3.130.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NA.DI1.214.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NA.DI2.215.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NA.DI3.216.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NM.DI1.107.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NM.DI3.109.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('TM.DI1.193.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('TM.DI3.195.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('UY.DI1.149.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('UY.DI2.150.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('YM.DI1.64.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('YM.DI2.65.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('YM.DI3.66.tiff');
for featI=1:size(features,2)
    disgustFeatures(featI)=disgustFeatures(featI)+features(featI);
end


% Calculating average of feature vector
disgustFeatures=disgustFeatures./disgustImgSize;

end
