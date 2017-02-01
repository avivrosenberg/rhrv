%%%  Configuration file for the rhrv toolkit.
%%%
%%% Use this file to set user-specific settings.

%% Configure paths
% All paths here can be relaive (to the root of the repo), or absolute.

% Specify a path on this system that contains the physionet wfdb executables.
% If left blank, the current matlab directory will be searched recursively, followed
% by the directories in the $PATH environment variable.
rhrv_cfg_.paths.wfdb_path = '';

%% Configure plots

% Specify desired object sizes for figures.
rhrv_cfg_.plots.font_size = 12;
rhrv_cfg_.plots.line_width = 1.0;
rhrv_cfg_.plots.marker_size = 4;