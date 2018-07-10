function [ CI ] = InterConf( x )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
SEM = std(x)/sqrt(length(x));
ts = tinv([0.025  0.975],length(x)-1);
CI = mean(x) + ts*SEM ;

end

