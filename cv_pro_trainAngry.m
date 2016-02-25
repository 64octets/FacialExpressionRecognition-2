% training function for angry images

function [angryFeatures]=cv_pro_trainAngry() 

angryFeatures=[0 0 0 0 0];

% Total number of angry images used to generate training data
angryImgSize=23;

% Generating feature vectors for standard Angry images from JAFFE Database
features=cv_pro_extractFeatures('KA.AN3.41.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KL.AN1.167.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KL.AN2.168.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KL.AN3.169.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KM.AN1.17.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KM.AN3.19.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KR.AN2.84.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KR.AN3.85.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('MK.AN1.125.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('MK.AN2.126.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NA.AN1.211.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NA.AN2.212.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NM.AN1.104.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NM.AN2.105.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NM.AN3.106.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('TM.AN1.190.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('TM.AN3.192.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('UY.AN1.146.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('UY.AN2.147.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('UY.AN3.148.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('YM.AN1.61.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('YM.AN2.62.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('YM.AN3.63.tiff');
for featI=1:size(features,2)
    angryFeatures(featI)=angryFeatures(featI)+features(featI);
end

% Calculating average of feature vector
angryFeatures=angryFeatures./angryImgSize;

end
