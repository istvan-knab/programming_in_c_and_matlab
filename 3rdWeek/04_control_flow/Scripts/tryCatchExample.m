% Try catch is also a flow control technique in Matlab that can be useful
% during debugging of codes. But it is highly unrecommended in released
% codes! It can be used for those operations that potentially runs to an
% error but it is hard to check with conventional methods (e.g., one wants
% to evaluate a multivariate Gaussian distribution at a given point, 
% the covariance of the Gaussian distribution should be invertable and 
% symmetric.)

covariance = [10, 0; 0 1];
mu = zeros(size(covariance, 2));
xQuery = [1 0];
try 
    likelihood = mvnpdf(xQuery, mu, covariance);
catch errorMessage
    randomVector = mu;
end

% This code should run anyway...
disp('The rest of the very important code...');