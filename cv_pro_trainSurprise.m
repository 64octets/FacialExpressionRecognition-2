% training function for surprise images 

function [surpriseFeatures]=cv_pro_trainSurprise() 

surpriseFeatures=[0 0 0 0 0];

% Total number of Surprise images used to generate training data
surpriseImgSize=21;

% Generating feature vectors for standard Surprise images from JAFFE Database
features=cv_pro_extractFeatures('KA.SU2.37.tiff');
for featI=1:size(features,2)
    surpriseFeatures(featI)=surpriseFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KL.SU1.164.tiff');
for featI=1:size(features,2)
    surpriseFeatures(featI)=surpriseFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KL.SU2.165.tiff');
for featI=1:size(features,2)
    surpriseFeatures(featI)=surpriseFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KM.SU1.14.tiff');
for featI=1:size(features,2)
    surpriseFeatures(featI)=surpriseFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KM.SU2.15.tiff');
for featI=1:size(features,2)
    surpriseFeatures(featI)=surpriseFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KM.SU3.16.tiff');
for featI=1:size(features,2)
    surpriseFeatures(featI)=surpriseFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KR.SU1.80.tiff');
for featI=1:size(features,2)
    surpriseFeatures(featI)=surpriseFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KR.SU2.81.tiff');
for featI=1:size(features,2)
    surpriseFeatures(featI)=surpriseFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KR.SU3.82.tiff');
for featI=1:size(features,2)
    surpriseFeatures(featI)=surpriseFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('MK.SU1.122.tiff');
for featI=1:size(features,2)
    surpriseFeatures(featI)=surpriseFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('MK.SU2.123.tiff');
for featI=1:size(features,2)
    surpriseFeatures(featI)=surpriseFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NA.SU2.209.tiff');
for featI=1:size(features,2)
    surpriseFeatures(featI)=surpriseFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NA.SU3.210.tiff');
for featI=1:size(features,2)
    surpriseFeatures(featI)=surpriseFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NM.SU1.101.tiff');
for featI=1:size(features,2)
    surpriseFeatures(featI)=surpriseFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NM.SU2.102.tiff');
for featI=1:size(features,2)
    surpriseFeatures(featI)=surpriseFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('TM.SU1.187.tiff');
for featI=1:size(features,2)
    surpriseFeatures(featI)=surpriseFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('TM.SU3.189.tiff');
for featI=1:size(features,2)
    surpriseFeatures(featI)=surpriseFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('UY.SU1.143.tiff');
for featI=1:size(features,2)
    surpriseFeatures(featI)=surpriseFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('UY.SU3.145.tiff');
for featI=1:size(features,2)
    surpriseFeatures(featI)=surpriseFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('YM.SU2.59.tiff');
for featI=1:size(features,2)
    surpriseFeatures(featI)=surpriseFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('YM.SU3.60.tiff');
for featI=1:size(features,2)
    surpriseFeatures(featI)=surpriseFeatures(featI)+features(featI);
end

% Calculating average of feature vector
surpriseFeatures=surpriseFeatures./surpriseImgSize;


end
