clc
clear
close all

t = 0:0.01:2*pi;
t = reshape(t,[],1);
X = [sin(t) cos(t) sin(2*t) cos(2*t) 5+sin(t) 5*sin(t)];
datalabels = {'sin x','cos x','sin 2x','cos 2x','5+sin x','5.sin x'};

corr_type = 'Spearman';
[r, p_val] = corr_heatmap(X, datalabels, corr_type, 1);