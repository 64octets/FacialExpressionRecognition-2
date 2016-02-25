% testImgs: function used to call cv_pro_trainAndTest for every image


function [] = cv_pro_testImgs(varargin)
	nbarg = length(varargin);
	if nbarg == 0
		return
	end

	for arg_i = 1:nbarg
		cv_pro_trainAndTest(varargin{arg_i});
    end
end