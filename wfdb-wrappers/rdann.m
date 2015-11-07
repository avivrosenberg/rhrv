function [ ann ] = rdann( rec_name, ann_ext, varargin )
%RDANN Wrapper for WFDB's 'rdann'
%   Detailed explanation goes here

%% === Input

% Defaults

% Define input
p = inputParser;
p.addRequired('rec_name', @isrecord);
p.addRequired('ann_ext', @isstr);

% Get input
p.parse(rec_name, ann_ext, varargin{:});

%% === Run rdann

% Command to run rdann and cut only the annotation samples out
command = sprintf('rdann -r %s -a %s | awk ''{print $2}''', rec_name, ann_ext);

[res, out] = system(command);
if(res ~= 0)
    error('rdann error: %s', out);
end

% Convert string of numbers to vector
ann = str2num(out); 

% add 1 to all values because WFDB's indices are zero-based
ann = ann + 1;
end

