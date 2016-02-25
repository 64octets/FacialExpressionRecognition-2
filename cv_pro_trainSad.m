% training function for sad images 

function [sadFeatures]=cv_pro_trainSad() 

sadFeatures=[0 0 0 0 0];

% Total number of Sad images used to generate training data
sadImgSize=25;

% Generating feature vectors for standard Sad images from JAFFE Database
features=cv_pro_extractFeatures('KA.SA2.34.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KA.SA3.35.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KL.SA1.161.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KL.SA2.162.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KL.SA3.163.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KM.SA1.9.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KM.SA3.11.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KR.SA1.77.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KR.SA2.78.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('KR.SA3.79.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('MK.SA1.119.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('MK.SA2.120.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('MK.SA3.121.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NA.SA1.205.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NA.SA2.206.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NA.SA3.207.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NM.SA1.98.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('NM.SA2.99.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('TM.SA2.185.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('TM.SA3.186.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('UY.SA1.140.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('UY.SA2.141.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('YM.SA1.55.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('YM.SA2.56.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end

features=cv_pro_extractFeatures('YM.SA3.57.tiff');
for featI=1:size(features,2)
    sadFeatures(featI)=sadFeatures(featI)+features(featI);
end


% Calculating average of feature vector
sadFeatures=sadFeatures./sadImgSize;

end
