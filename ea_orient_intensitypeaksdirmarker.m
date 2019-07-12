function [sumintensity] = ea_orient_intensitypeaksdirmarker(intensity,angles)
% This function detects 'noPeaks' number of intensity peaks. peaks are constrained to be at 360°/noPeaks angles to each other.
% Function runs a noPeaks * (360°/noPeaks) array over the intensity-profile and finds the angle at which the sum of all peaks is highest.
% 
%
% USAGE:
%
%    [sumintensity] = ea_orient_intensitypeaksdirmarker(intensity,angles)
%
% INPUTS:
%    intensity:
%    angles:
%
% OUTPUTS:
%    sumintensity:
%
% .. AUTHOR:
%       - Andreas Horn, Original file
%       - Ningfei Li, Original file
%       - Daniel Duarte, Documentation

peak = round(rad2deg(angles) +1);
peak(find(peak<1)) = peak(find(peak<1)) +360;
peak(find(peak>360)) = peak(find(peak>360)) -360;    
sumintensity = sum(intensity(peak));    
end