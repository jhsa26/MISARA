% Copyright (c) 2021, Vittorio Minio 
% All rights reserved.
% This is a modified version of the GSpecDisp package. For more details, see:
% - Sadeghisorkhani, H., Gudmundsson, O., Tryggvason, A., 2017. 
%   GSpecDisp: a Matlab GUI package for phase-velocity dispersion measurements 
%   from ambient-noise correlations, Computers and Geosciences.
% 
% 1) TERMS OF USE
%   If you use MISARA or any function(s) of it, you need to acknowledge 
%   MISARA by citing the following DOI:
%
%   https://doi.org/10.5281/zenodo.4642016
%  
% 
% 2) LICENSE:
%   This program is part of MISARA
%   MISARA is free software: you can redistribute it and/or modify
%   it under the terms of the GNU General Public License as published by
%   the Free Software Foundation, either version 3 of the License, or
%   (at your option) any later version.
%      MISARA is distributed in the hope that it will be useful,
%   but WITHOUT ANY WARRANTY; without even the implied warranty of
%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%   GNU General Public License for more details.
%       You should have received a copy of the GNU General Public License
%   along with this program.  If not, see <http://www.gnu.org/licenses/>.

%%%% Home function%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Main module of the package to configure and manage datasets, parameters
% and modules.
% February 2021 
% Vittorio Minio

%%%%%%%%%%%%%%%VARIABLES%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% params: user parameters
% h: UI graphics parameters
% h2: UI control parameters
% main_fig: Home figure 
%%%%%%%%%%%%h.variables%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% menu_main: menu panel in the Home figure   
% menu (*): menu section in the Home figure

%% Add folders to search path
clc;clear;close all
addpath(genpath(['.', filesep, 'parameters']))
addpath(genpath(['.', filesep, 'main_fig']))
addpath(genpath(['.', filesep, 'predefind_mats']))
addpath(genpath(['.', filesep, 'Array_map']))
addpath(genpath(['.', filesep, 'Spectrogram']))
addpath(genpath(['.', filesep, 'Spectral_coherence']))
addpath(genpath(['.', filesep, 'Polarization']))
addpath(genpath(['.', filesep, 'STA_LTA']))
addpath(genpath(['.', filesep, 'Salped']))
addpath(genpath(['.', filesep, 'ZLC']))
addpath(genpath(['.', filesep, 'Semblance']))
addpath(genpath(['.', filesep, 'Radial Semblance']))
addpath(genpath(['.', filesep, 'Music']))
addpath(genpath(['.', filesep, 'func']))
addpath(genpath(['.', filesep, 'Instrumental correction']))
addpath(genpath(['.', filesep, 'CreateData']))
%% Declaration global variables
global params h2
params.version= 'MISARA 1.0';%Version of MISARA
%% Control and load user/default parameters in the Home module
if exist('user_values.mat','file')==2
    load user_values.mat
else
    load default_values.mat    
end
%% Home figure
mainfig=figure('name',[params.version, ' - Home'],...
        'Menubar','none', 'NumberTitle','off','units','normalized');%%Create the Home figure   
config_main;%%Return the the modules location in the Home figure
config_general;%%Return the General Management figure
config_map;%%Return the Instrumental figure
config_analysis;%%Return the Preliminary analysis figure
config_array_analysis;%%Return the Array analysis figure
%% Menu panel
h.menu_main = uibuttongroup(mainfig,'visible','on','units','normalized','Position',[.015 .65 .2 .30],...
    'BackgroundColor','w','HighlightColor',[1 1 1]*.3,'BorderWidth',1,'BorderType','beveledin');%%Create the menu panel in the Home figure 


h.menu(1) = uicontrol( h.menu_main, 'Style','Radio','String','General Management',...
    'BackgroundColor','w', 'units','normalized','position',[.06 .8 .9 .2],...
    'HandleVisibility','off','Userdata',h.panel(1));%%Create the General Management section of the menu panel

h.menu(2) = uicontrol( h.menu_main, 'Style','Radio','String','Instrumental',...
    'BackgroundColor','w', 'units','normalized','position',[.06 .65 .9 .2],...
    'HandleVisibility','off', 'Userdata',h.panel(2));%%Create the Instrumental section of the menu panel

h.menu(3) = uicontrol( h.menu_main, 'Style','Radio','String','Preliminary Analysis',...
    'BackgroundColor','w', 'units','normalized','position',[.06 .5 .9 .2],'HandleVisibility','off',...
    'Userdata',h.panel(3));%%Create the Preliminary analysis section of the menu panel

h.menu(4) = uicontrol( h.menu_main, 'Style','Radio','String','Array Analysis',...
    'BackgroundColor','w', 'units','normalized','position',[.06 .35 .9 .2],'HandleVisibility','off',...
    'Userdata',h.panel(4));%%Create the Array analysis section of the menu panel

set(h.menu_main,'selectedobject',h.menu(1));%%Set the starting section of the menu panel

set(h.menu_main,'SelectionChangeFcn',@menu_cbk);%%Change the section of the menu panel
%% Create Dataset button
uicontrol(mainfig,'style','pushbutton', 'string','Create Dataset','units','normalized',...
    'BackgroundColor','w','position',[.03 .68 .15 .07], 'callback','CreateDataStruct');