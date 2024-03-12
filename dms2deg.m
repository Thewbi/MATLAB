function phi_deg = dms2deg( phi_dms )
%UNTITLED Summary of this function goes here
% Detailed explanation goes here
phi_deg = phi_dms(:,1) + phi_dms(:,2)/60;
end



% function result = dms2deg(dms)
% 
%     % https://www.rapidtables.com/convert/number/degrees-minutes-seconds-to-degrees.html
%     deg = dms(:, 1);
%     min = dms(:, 2);
%     sec = dms(:, 3);
% 
%     result = deg + min .* 1/60 + sec .* 1/3600;
% 
% end