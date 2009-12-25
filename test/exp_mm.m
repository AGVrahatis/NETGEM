%%% exp_mm.m --- 
%% 
%% Filename: exp_mm.m
%% Description: 
%% Author: Vinay Jethava
%% Maintainer: 
%% Created: Thu Dec 24 17:45:07 2009 (+0530)
%% Version: 
%% Last-Updated: Thu Dec 24 17:48:12 2009 (+0530)
%%           By: Vinay Jethava
%%     Update #: 5
%% URL: http://www.github.com/vjethava
%% Keywords: 
%% Compatibility: 
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
%%% Commentary: 
%%  
%% This file is the top-level script for comparison of the mixture
%% model with unmodified HMM. 
%% 
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
%%% Change log:
%% 
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
%% This program is free software; you can redistribute it and/or
%% modify it under the terms of the GNU General Public License as
%% published by the Free Software Foundation; either version 3, or
%% (at your option) any later version.
%% 
%% This program is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
%% General Public License for more details.
%% 
%% You should have received a copy of the GNU General Public License
%% along with this program; see the file COPYING.  If not, write to
%% the Free Software Foundation, Inc., 51 Franklin Street, Fifth
%% Floor, Boston, MA 02110-1301, USA.
%% 
%%%%%%%%%%%%%%%% Code:

%% PreSetup 
warning off; 
addpath ../lib/HMM;
addpath ../lib/KPMtools;
addpath ../lib/KPMstats;
addpath ../netlab3.3;
addpath ../code;

%% Initialization 
N = 10; 
p = 0.1; 
H = 6; % total number of classes
Hav = 2.5; % av number of classes per component

%% Code 
G = erdosRenyi(N, p); 
A = rand(N, H) < (Hav)/H; % gene-class membership matrix 
B = A + rand(N, H)/10;
D = [];
for i=1:N %% each gene must have atleast one class.
   D = [D; dirichletrnd(B(i, :))];    
end


    
%%%%%%%%%%%%%%%% exp_mm.m ends here
