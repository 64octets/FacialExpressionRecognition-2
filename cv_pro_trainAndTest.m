% This function performs training and testing of image to find facial expression
% This function is called using "cv_pro_testImgs.m" function

function [answer]=cv_pro_trainAndTest(imgTest)

% Number of zeros indicates total facial metrics
happyFeatF=[0 0 0 0 0];
sadFeatF=[0 0 0 0 0];
angryFeatF=[0 0 0 0 0];

surpriseFeatF=[0 0 0 0 0];
fearFeatF=[0 0 0 0 0];
neutralFeatF=[0 0 0 0 0];

disgustFeatF=[0 0 0 0 0];

% "trained.mat" file uses pre-determined value to test images
% To recompute the training data, simply remove the "trained.mat" file from folder
% create new training file if distance measure is changed to euclidean distance

if exist('trained.mat','file')
    existFile=1;
    
    %happyFeatF=load('trained.mat','happyFeatF');
    load('trained.mat','happyFeatF');
    load('trained.mat','sadFeatF');
    load('trained.mat','angryFeatF');
    
    load('trained.mat','surpriseFeatF');
    load('trained.mat','fearFeatF');
    load('trained.mat','neutralFeatF');
    
    load('trained.mat','disgustFeatF');
else
    % training needed

    happyFeatF=cv_pro_trainHappy();
    sadFeatF=cv_pro_trainSad();
    angryFeatF=cv_pro_trainAngry();
    surpriseFeatF=cv_pro_trainSurprise();
    fearFeatF=cv_pro_trainFear();
    neutralFeatF=cv_pro_trainNeutral();
    disgustFeatF=cv_pro_trainDisgust();
    save('trained.mat','happyFeatF','sadFeatF','angryFeatF','surpriseFeatF','fearFeatF','neutralFeatF','disgustFeatF');
end

% testing image using Mahalanobis distance 
answer=cv_pro_detectExpressionDistMaha(imgTest,happyFeatF,sadFeatF,angryFeatF,surpriseFeatF,fearFeatF,neutralFeatF,disgustFeatF);

% display final answer i.e. expression recognized for test images
answerOP=[imgTest,': Expression recognized is ',answer];
disp(answerOP)



