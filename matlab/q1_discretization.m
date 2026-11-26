%% State-space model
clear ; clc; close all;

% G(s)
s = tf ('s') ;
G = 1 / ( s ^2 * ( 0.1 * s + 1) );

sysc = ss ( G ) ;
[A , B , C , D ] = ssdata ( sysc ) ;

% plot
damp(sysc)