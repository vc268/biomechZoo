function localOr = getFPLocalOrigin(data)

% extracts local origin from zdata
%
% created August 15th 2013 by Philipe C. Dixon

% - For oxford gait lab, the output of this function should be
%
% p1 = [0.0003302	0.0002286	0.04034];
% p2 = [0.001397	-0.0000254	0.03757];
% p3 = [0.0000508	-0.001473	0.03873];

nplates = data.zoosystem.Analog.FPlates.NUMUSED;
localOr = struct;

for i = 1:nplates
    localOr.(['FP',num2str(i)]) =  data.zoosystem.Analog.FPlates.LOCALORIGIN(:,i)/1000';
end


% add unit information
%
data.zoosystem.Units.LocalOriginFP = 'mm';
