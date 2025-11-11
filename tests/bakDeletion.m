% MATLAB automation to delete .bak files 
% This code can be easily adapt for any extension

bakFiles=dir(fullfile('**\*.bak'));
count = numel(bakFiles);
for i=1:count
	delete(fullfile(bakFiles(i).folder,bakFiles(i).name));
end