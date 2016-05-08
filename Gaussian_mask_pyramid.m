function [ hg ] = Gaussian_mask_pyramid( mask_size, sigma)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    if nargin<2
        sigma=1;
    end
    if nargin==0
        mask_size=3;
    end
    [h1, h2] = meshgrid(-(mask_size-1)/2:(mask_size-1)/2,...
                        -(mask_size-1)/2:(mask_size-1)/2);
%     compute distribution, omit the 2*pi*sigma^2
    hg = exp(- (h1.^2+h2.^2) / (2*sigma^2));
%     normalization
    coeff=sum(sum(hg));
    hg=hg./coeff;
    
end

